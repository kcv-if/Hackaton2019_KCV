@extends('master')

@section('css')
    <style>
        html, body {
            background-color: #fff;
            height: 100vh;
            font-family: 'Roboto+Condensed', sans-serif;
            background: url('/images/bg6.jpg');
            background-size:     cover;
            background-repeat:   no-repeat;
            background-position: center center;
        }

        .main {
            min-height: 100%;
            display: flex;
            align-items: center;
        }

        .scoreboard {
            width: 50%;
            margin: auto;
            padding: 20px 50px;
            background: #FFFFFF;
            border-radius: 12px;
        }

        .scoreboard table span {
            width: 100px;
        }

    </style>
@endsection

@section('body')
    <div class="main">
        <div class="container">
            <div class="scoreboard shadow p-3 mb-5">
                <table class="table table-sm table-borderless text-center">
                    <tbody>
                    @foreach($data as $dt)
                        <tr>
                            <th scope="row" ><h2>{{ $dt['nama'] }}</h2></th>
                            <td><h2><span class="badge badge-secondary">{{ $dt['skor'] }}</span></h2></td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>

    </div>


@endsection

@section('js')
    <script src="https://js.pusher.com/4.4/pusher.min.js"></script>
    <script>
        console.log('{{ url()->current() }}')

        if ({{env('APP_DEBUG')}}){
            // Enable pusher logging - don't include this in production
            Pusher.logToConsole = true;
        }

        var pusher = new Pusher("{{env('PUSHER_APP_KEY')}}", {
            cluster: "{{env('PUSHER_APP_CLUSTER')}}",
            forceTLS: false
        });
        setTimeout("location.reload(true);", 2000);
        var channel = pusher.subscribe('rooms.{{ $id_room }}');
        channel.bind('scoreboard.update', function(data) {
            // location.reload(true);
            $.ajax({
                type:'GET',
                url: '{{ url()->current() }}'+'/data',
                success:function(data){
                    console.log(data);
                    // $("#score_"+data.data[0].nama).html(data.data[0].skor);
                    // $('tbody').text('')
                    let baru = ''
                    for (let i = 0; i < data.data.length; i++){
                        let temp = ''
                        temp += '<tr><th scope="row" ><h2>';
                        temp += data.data[i].nama;
                        temp += '</h2></th><td><h2><span class="badge badge-secondary">'
                        temp += data.data[i].skor;
                        temp += '</span></h2></td></tr>';
                        baru += temp;
                    }
                    $('tbody').innerHTML(baru);
                }
            });
        });
    </script>
@endsection

