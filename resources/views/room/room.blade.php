

@extends('master')
@section('css')
    <style>
        html, body {
            background-color: #fff;
            height: 100vh;
            font-family: 'Roboto+Condensed', sans-serif;
            background: url('/images/bg5.jpg');
            background-size:     cover;
            background-repeat:   no-repeat;
            background-position: center center;
        }

        .main {
            min-height: 100%;
            display: flex;
            align-items: center;
        }

        .kotak-soal-1 {
            position: absolute;
            bottom: 0;
            height: 40vh;
            width: 100vw;
            background-color: #EF4A4E;
        }

        .kotak-soal-2 {
            position: absolute;
            bottom: 0;
            height: 34vh;
            width: 100vw;
            background-color: #C93E43;
            margin-bottom: 3vh;
        }

        .kotak-soal-3 {
            position: absolute;
            bottom: 0;
            height: 28vh;
            width: 94vw;
            background-color: #EAE0D4;
            margin-bottom: 3vh !important;
            left: 50%;
            margin-left: -47vw;
            border-radius: 10px;
            overflow: auto;
        }

        .kotak-soal-3 .soal {
            padding: 5px 200px 0 200px;
            text-align: center;
        }

        .kotak-soal-3 .soal p {
            margin: 0;
        }

        .kotak-soal-3 .pilihan-jawaban {
            padding: 0px 30px;
            text-align: center;
            width: 100%;
            display: inline-table;
        }
        .pilihan-jawaban .jawaban{
            width: 50%;
            text-align: center;
            display: inline-block;
            height: 40px;
            line-height: 40px;
            margin-bottom: 15px;
        }

        .jawaban p{
            background-color: #EAE0D4;
            border: 2px solid rgba(139, 139, 139, .3);
            border-radius: 25px;
            margin: 3px 0px;
            -webkit-touch-callout: none;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            -webkit-tap-highlight-color: transparent;
            transition: all .2s;

            transition: transform .3s ease-in-out;
        }

        .jawaban.clicked p{
            background-color: #FFF7A5;
        }

        #kotak-time-bar {
            position: absolute;
            top: 0;
            height: 5vh;
            width: 50vw;
            background-color: #EAE0D4;
            left: 50%;
            margin-left: -25vw;
            border-radius: 5px;
        }

        #kotak-time-bar div {
            height: 100%;
            text-align: right;
            padding: 0 0px;
            line-height: 5vh;
            width: 0;
            background-color: #EF4A4E;
            box-sizing: border-box;
        }
        @media (max-width: 768px) {
            .kotak-soal-1 {
                height: 48vh;
            }
            .kotak-soal-2 {
                height: 43vh;
            }
            .kotak-soal-3 {
                height: 38vh;
            }
            .kotak-soal-3 .soal {
                padding: 5px 10px 0 10px;
            }
            .pilihan-jawaban .jawaban {
                line-height: 30px;
                margin-bottom: 0px;
            }
            .kotak-soal-3 .soal p {
                font-size: 0.85rem;
            }
            .jawaban p {
                font-size: 0.85rem;
            }
        }
    </style>
@endsection

@section('body')
    <div class="main">
        <div class="container text-center">
        </div>
            <div id="kotak-time-bar">
                <div></div>
            </div>

            <div class="kotak-soal-1">

                <div class="kotak-soal-2">

                <?php $number = count($kumpulan_soal); ?>

                @foreach ($kumpulan_soal as $soal)
                    <form method="POST" id="form_{{$soal['soal_id']}}" action="{{ route('room.submit', ['id_room'=>$id_room])}}">
                    @csrf

                    <input type="hidden" name="soal_id" value={{$soal['soal_id']}}>
                    <input type="hidden" name="user_id" value={{session('user_id')}}>
                    <input type="hidden" name="elapsed_time" value="5">
                    <input type="hidden" name="id_room" value={{$id_room}}>
                    <input type="hidden" name="jawaban" value="0">

                    <div class="kotak-soal-3 d-none" id="soal_{{$soal['soal_id']}}">
                        <div class="soal">
                            <p><b>{{$soal['soal']}}</b></p>
                        </div>

                        <div class="pilihan-jawaban">
                            <div class="jawaban" onclick="submit_form({{$soal['soal_id']}})">
                                <p>{{$soal['jawaban'][0]}}</p>
                            </div>
                            <div class="jawaban" onclick="submit_form({{$soal['soal_id']}})">
                                <p>{{$soal['jawaban'][1]}}</p>
                            </div>
                            <div class="jawaban" onclick="submit_form({{$soal['soal_id']}})">
                                <p>{{$soal['jawaban'][2]}}</p>
                            </div>
                            <div class="jawaban" onclick="submit_form({{$soal['soal_id']}})">
                                <p>{{$soal['jawaban'][3]}}</p>
                            </div>
                        </div>

                    </div>



                </form>
                @endforeach


                </div>
            </div>


    </div>

@endsection

@section('js')
    <script>

        $.ajaxSetup({

            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }

        });

        <?php $number = count($kumpulan_soal); ?>
        var number = {{$number}}
        var numb = {{$number}}
        var flag = 0;

        function submit_form(val) {
            //console.log(event);

            if(!flag){
                $(event.path[1]).addClass('clicked');
                flag = 1;

                var jawaban = $(event.path[0]).html();
                var soal_id = $("#form_"+val+" input[name=soal_id]").val();
                var user_id =  $("#form_"+val+" input[name=user_id]").val();
                var elapsed_time =  $("#form_"+val+" input[name=elapsed_time]").val();
                var id_room =  $("#form_"+val+" input[name=id_room]").val();

                console.log('/room/'+id_room+'/submit')

                $.ajax({
                    type:'POST',
                    url:'/room/'+id_room+'/submit',
                    data:{soal_id:soal_id, user_id:user_id, elapsed_time:elapsed_time,
                        id_room: id_room, jawaban:jawaban},
                    success:function(data){
                        console.log("berhasil");
                        console.log(data);
                    }

                });
            }
        }

        function progress(timeleft, timetotal, $element) {
            var progressBarWidth = timeleft * $element.width() / timetotal;



            $('#kotak-time-bar div').animate(
                { width: progressBarWidth + 'px'},
                timeleft == timetotal ? 0 : 1000, 'linear');
            if(timeleft > 0) {

                setTimeout(function() {
                    progress(timeleft - 1, timetotal, $element);
                }, 1000);

            } else {
                number--;
                if(number > 0){
                    progress(15, 15, $('#kotak-time-bar'));

                    flag = 0;
                    $(".kotak-soal-3").addClass("d-none");
                    temp = document.getElementsByClassName('kotak-soal-3')[numb - number]
                    $(temp).removeClass("d-none");
                }
                else{
                    let user_id =  $("input[name=user_id]")[0].value;
                    let id_room =  $("input[name=id_room]")[0].value;
                    $.ajax({
                        type:'POST',
                        url:'/room/'+id_room+'/finish',
                        data:{user_id:user_id},
                        success:function(data){
                            console.log("finish playing");
                            console.log(data);
                            let id_rom = $("input[name=id_room]")[0].value;
                            window.location.href = id_rom +"/scoreboard";
                        }
                    });
                }
            }
        };

        temp = document.getElementsByClassName('kotak-soal-3')[0]
        $(temp).removeClass("d-none");

        progress(15, 15, $('#kotak-time-bar'));

    </script>

@endsection
