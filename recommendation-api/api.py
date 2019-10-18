import re
import os
import numpy as np
import phpserialize
from flask import Flask, current_app, jsonify, make_response, request, current_app
from flask_cors import CORS, cross_origin
from flask_marshmallow import Marshmallow
from flask_sqlalchemy import SQLAlchemy
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity
from spacy.lang.id import Indonesian
from dotenv import load_dotenv

load_dotenv('../.env')

class TextPreprocessor:
    def __init__(self):
        self._nlp = Indonesian()

    def case_fold(self, text: str) -> str:
        return text.lower()

    def remove_non_alphabet(self, text: str) -> str:
        text = re.sub('[^a-zA-Z]', ' ', text)
        text = re.sub(r'\s{2,}', ' ', text)
        return text

    def lemmatize(self, text: str) -> str:
        result = self._nlp(text)
        result = [tok.lemma_ for tok in result if not tok.is_stop]
        result = ' '.join(res for res in result if len(res) > 2)
        return result

    def clean(self, text: str) -> str:
        lower = self.case_fold(text)
        alpha = self.remove_non_alphabet(lower)
        cleaned = self.lemmatize(alpha)
        return cleaned


app = Flask(__name__)
CORS(app, support_credentials=True)
app.config['SQLALCHEMY_DATABASE_URI'] = os.getenv('SQLALCHEMY_DATABASE_URI')
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)
ma = Marshmallow(app)


class Paket(db.Model):
    __tablename__ = 'pakets'
    id = db.Column(db.Integer, primary_key=True)
    nama_paket = db.Column(db.String())

    def __init__(self, nama_paket):
        self.nama_paket = nama_paket


class PaketSchema(ma.Schema):
    class Meta:
        fields = ('id', 'nama_paket')


class Soal(db.Model):
    __tablename__ = 'soals'
    id = db.Column(db.Integer, primary_key=True)
    paket_id = db.Column(db.Integer)
    soal = db.Column(db.Text)
    pilihan = db.Column(db.Text)
    jawaban = db.Column(db.String())

    def __init__(self, paket_id, soal, pilihan, jawaban):
        self.paket_id = paket_id
        self.soal = soal
        self.pilihan = pilihan
        self.jawaban = jawaban


class SoalSchema(ma.Schema):
    class Meta:
        fields = ('id', 'paket_id', 'soal', 'pilihan', 'jawaban')


paket_schema = PaketSchema()
pakets_schema = PaketSchema(many=True)
soal_schema = SoalSchema()
soals_schema = SoalSchema(many=True)

processor = TextPreprocessor()

def convert(data):
    if isinstance(data, bytes):  return data.decode('utf-8')
    if isinstance(data, dict):   return dict(map(convert, data.items()))
    if isinstance(data, tuple):  return map(convert, data)
    return data

def get_docs_labels():
    pakets = Paket.query.all()
    pakets = pakets_schema.dump(pakets)
    docs = []
    labels = []
    names = []
    for paket in pakets:
        doc_paket = []
        soals = Soal.query.filter_by(paket_id=paket['id'])
        soals = soals_schema.dump(soals)
        for soal in soals:
            soal['pilihan'] = phpserialize.loads(
                soal['pilihan'].encode('utf-8'))
            soal['pilihan'] = convert(soal['pilihan'])
            text = [soal['soal']]
            text.extend(list(soal['pilihan'].values()))
            text = ' '.join(text)
            doc_paket.append(text)
        doc_paket = ' '.join(doc_paket)
        docs.append(doc_paket)
        labels.append(paket['id'])
        names.append(paket['nama_paket'])
    processor = TextPreprocessor()
    data = []
    for doc in docs:
        temp = processor.clean(doc)
        data.append(temp)
    return data, labels, names


def get_doc_vector(docs: list):
    vect = TfidfVectorizer()
    vector = vect.fit_transform(docs)
    return vector


def soals_by_paket(paket_id):
    soals = Soal.query.filter_by(paket_id=paket_id)
    soals = soals_schema.dump(soals)
    doc_paket = []
    for soal in soals:
        soal['pilihan'] = phpserialize.loads(soal['pilihan'].encode('utf-8'), decode_strings=True)
        text = [soal['soal']]
        text.extend(list(soal['pilihan'].values()))
        text = ' '.join(text)
        doc_paket.append(text)
    docs = ' '.join(doc_paket)
    return docs


class DocumentRanker:
    def __init__(self):
        self.document_data, self.labels, self.names = get_docs_labels()
        self.document_vector = get_doc_vector(self.document_data)
        self.names = np.array(self.names)
        self.labels = np.array(self.labels)

    def get_sorted_ids(self, paket_ids: list):
        paket_ids = [int(paket_id) for paket_id in paket_ids]
        query_doc = [soals_by_paket(paket_id) for paket_id in paket_ids]
        query_doc = ' '.join(query_doc)
        query_doc = processor.clean(query_doc)
        vect = TfidfVectorizer()
        self.document_vector = vect.fit_transform(self.document_data)
        query_vector = vect.transform([query_doc])

        distance = cosine_similarity(self.document_vector, query_vector)
        indexes = np.argsort(-distance, axis=0).flatten()
        matched_ids = self.labels[indexes]
        matched_names = self.names[indexes]
        matched_ids = [match_id for match_id in matched_ids if match_id not in paket_ids]
        matched_names = [
            self.names[list(self.labels).index(matched_id)] for matched_id in matched_ids
        ]
        return matched_ids[:8], matched_names[:8]


ranker = DocumentRanker()


@app.route('/recommendation', methods=['POST'])
@cross_origin(supports_credentials=True)
def recomm():
    data = request.get_json()
    print(data)
    paket_id = data['paket_id']
    match_ids, matched_names = ranker.get_sorted_ids(paket_id)
    response = []
    for match_id, match_name in zip(match_ids, matched_names):
        temp = {'id': int(match_id), 'nama_paket': str(match_name)}
        response.append(temp)
    response = jsonify(response)
    print(response)
    return response


if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=8080, use_reloader=False)
