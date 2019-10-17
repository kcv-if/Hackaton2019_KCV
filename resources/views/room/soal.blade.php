@extends('master')
@section('css')
    <style>
        html, body {
            background-color: #fff;
            height: 100vh;
            font-family: 'Roboto+Condensed', sans-serif;
            background: url('/images/bg3.jpg');
            background-size:     cover;
            background-repeat:   no-repeat;
            background-position: center center;   
        }

        .main {
            min-height: 100%;
            display: flex;
            align-items: center;
        }

        .main .container {
            margin-top: -120px;
        }

        ul.ks-cboxtags.main-cbox{
            width: 80%;
            margin: auto;
        }

        ul.ks-cboxtags {
            list-style: none;
            padding: 20px;
            text-align: center;
        }

        ul.ks-cboxtags li{
            display: inline;
        }

        ul.ks-cboxtags li label{
            display: inline-block;
            background-color: rgba(255, 255, 255, .9);
            border: 2px solid rgba(139, 139, 139, .3);
            color: #adadad;
            border-radius: 25px;
            white-space: nowrap;
            margin: 3px 0px;
            -webkit-touch-callout: none;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            -webkit-tap-highlight-color: transparent;
            transition: all .2s;
        }

        ul.ks-cboxtags li label {
            padding: 8px 12px;
            cursor: pointer;
            height: 100px;
            width: 100px;
        }

        ul.ks-cboxtags li label::before {
            display: inline-block;
            font-style: normal;
            font-variant: normal;
            text-rendering: auto;
            -webkit-font-smoothing: antialiased;
            font-weight: 900;
            font-size: 12px;
            padding: 2px 6px 2px 2px;
            transition: transform .3s ease-in-out;
        }

        ul.ks-cboxtags li input[type="checkbox"]:checked + label::before {
            transition: transform .3s ease-in-out;
        }

        ul.ks-cboxtags li input[type="checkbox"]:checked + label {
            border: 2px solid #1bdbf8;
            background-color: #12bbd4;
            color: #fff;
            transition: all .2s;
        }

        ul.ks-cboxtags li input[type="checkbox"] {
            display: absolute;
        }

        ul.ks-cboxtags li input[type="checkbox"] {
            position: absolute;
            opacity: 0;
        }

        ul.ks-cboxtags li input[type="checkbox"]:focus + label {
            border: 2px solid #e9a1ff;
        }

        .button-pilih .button {
            position: relative;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            background: #FF4818;
            padding: 1em 2em;
            border: none;
            color: white;
            font-size: 1.2em;
            cursor: pointer;
            outline: none;
            overflow: hidden;
            border-radius: 100px;
        }

        .button-pilih .button span {
            position: relative;
            pointer-events: none;
        }

        .button-pilih .button::before {
            --size: 0;
            content: '';
            position: absolute;
            left: var(--x);
            top: var(--y);
            width: var(--size);
            height: var(--size);
            background: radial-gradient(circle closest-side, #fab95b, transparent);
            -webkit-transform: translate(-50%, -50%);
                    transform: translate(-50%, -50%);
            transition: width .2s ease, height .2s ease;
        }
            
        .button-pilih .button:hover::before {
            --size: 600px;
        }

        .button-pilih {
            margin-top: -15px;
        }

        .button-pilih button {
            padding-left: 80px !important;
            padding-right: 80px !important;
        }

        .recommendation-box-1 {
            bottom: -10px;
            width: 80%;
            position: fixed;
            left: 50%;
            margin-left: -40%;
            align-items: center;
            background: #FF4818;
            height: 160px;
            border-radius: 10px;
        }

        .recommendation-box-2 {
            bottom: -10px;
            width: calc(80% - 40px);
            position: fixed;
            left: 50%;
            margin-left: calc(20px - 40%);
            align-items: center;
            background: #FFFFFF;
            height: 140px;
            border-radius: 10px;
            z-index: -1;
        }

        .recommendation-title {
            width: 25%;
            height: 30px;
            margin: auto;
            background: #FF4818;
            vertical-align: bottom;
        }

        .recommendation-title h5 {
            text-align: center;
            margin-top: 10px;
            color: #FFFFFF;
            font-weight: 700;
        }

    </style>
@endsection

@section('body')
    <div class="main">
        
        <div class="container text-center">
        <h1><b>Pilih Paket Soal</b></h1>
        <form method="POST" action="{{ route('soal.add', $id_room)}}" id="pilih-soal">
            @csrf

            <ul class="ks-cboxtags main-cbox">
                @foreach($pakets as $paket)
                    <li>
                        <input type="checkbox" name="paket_id[]" id="checkbox.{{$paket->id}}" value="{{$paket->id}}" onclick="get_checked();">
                        <label for="checkbox.{{$paket->id}}">{{$paket->nama_paket}}</label>
                    </li>
                @endforeach
            </ul>

            <div class="button-pilih">
                <button class="button" type="submit" value="submit">
                    <span>Pilih</span>
                </button>
            </div>

        </form>
        </div>



        <div class="recommendation-box-1">
            <div class="recommendation-title">
                <h5>Rekomendasi Paket Soal</h5>
            </div>
            
            <div class="recommendation-box-2">
                <ul class="ks-cboxtags">
                    <li>
                        <input type="checkbox" id="rekom1" value="1" onclick="pilih_juga();">
                        <label for="rekom1">Rekom 1</label>
                    </li>
                    <li>
                        <input type="checkbox" id="rekom2" value="1" onclick="pilih_juga();">
                        <label for="rekom2">Rekom 1</label>
                    </li>
                    <li>
                        <input type="checkbox" id="rekom3" value="1" onclick="pilih_juga();">
                        <label for="rekom3">Rekom 1</label>
                    </li>
                    <li>
                        <input type="checkbox" id="rekom4" value="1" onclick="pilih_juga();">
                        <label for="rekom4">Rekom 1</label>
                    </li>
                    <li>
                        <input type="checkbox" id="rekom5" value="1" onclick="pilih_juga();">
                        <label for="rekom5">Rekom 1</label>
                    </li>
                    <li>
                        <input type="checkbox" id="rekom6" value="1" onclick="pilih_juga();">
                        <label for="rekom6">Rekom 1</label>
                    </li>
                    <li>
                        <input type="checkbox" id="rekom7" value="1" onclick="pilih_juga();">
                        <label for="rekom7">Rekom 1</label>
                    </li>
                    <li>
                        <input type="checkbox" id="rekom8" value="1" onclick="pilih_juga();">
                        <label for="rekom8">Rekom 1</label>
                    </li>
                </ul>
            </div>
        </div>
    </div>
@endsection

@section('js')
    <script>
        function pilih_juga() {
            event.preventDefault();
            let val = event.path[0].value;
            console.log(val);
            console.log($("input[type=checkbox][value=" + val + "]").is(':checked'));
            if ($("input[type=checkbox][value=" + val + "]").is(':checked')) {
                $("input[type=checkbox][value=" + val + "]").prop("checked",true);
            }
            else {
                $("input[type=checkbox][value=" + val + "]").prop("checked", false);
            }
            get_checked();
        }

        function get_checked(){
            checkedArr = document.querySelectorAll("input[type=checkbox]:checked");
            paket_ids = [];
            for (let index = 0; index < checkedArr.length; index++) {
                paket_id = checkedArr[index].value;
                paket_ids.push(paket_id);
            }
            console.log(paket_ids)
            $.ajax({
                url: 'http://10.151.33.36:8080/recommendation',
                dataType: 'json',
                type: 'post',
                contentType: 'application/json',
                data: JSON.stringify({'paket_id' : paket_ids}),
                processData: false,
                success: function (data, textStatus, jQxhr) {
                    console.log(data)
                    for (let index = 1; index <= data.length; index++) {
                        // console.log(data[index-1])
                        // console.log(data[index-1].id, data[index - 1].nama_paket)
                        let id = 'rekom'+index
                        $('#'+id).val(data[index-1].id)
                        $("label[for='"+id+"']").text(data[index-1].nama_paket)
                    }
                },
                error: function (jqXhr, textStatus, errorThrown) {
                    console.log(errorThrown);
                }
            });
        }


    </script>
@endsection