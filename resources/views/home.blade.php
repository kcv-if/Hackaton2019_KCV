@extends('master')
@section('css')
    <style>
        html, body {
            background-color: #fff;
            height: 100vh;
            font-family: 'Roboto+Condensed', sans-serif;
            background: url('/images/bg1.jpg');
            background-size:     cover;
            background-repeat:   no-repeat;
            background-position: center center;   
        }

        .main {
            min-height: 100%;
            display: flex;
            align-items: center;
        }

        .ml2 {
            font-weight: 400;
            font-size: 144px;
            font-family: 'Chewy', cursive;
        }

        .ml2 .letter {
            display: inline-block;
            line-height: 1em;
        }


        .button-play-master .button {
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

        .button-play-master .button span {
            position: relative;
            pointer-events: none;
        }

        .button-play-master .button::before {
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
            
        .button-play-master .button:hover::before {
            --size: 600px;
        }


        .button-play-join .button {
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

        .button-play-join .button span {
            position: relative;
            pointer-events: none;
        }

        .button-play-join .button::before {
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
            
        .button-play-join .button:hover::before {
            --size: 600px;
        }

        .button-play-group {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .button-play-master, .button-play-join {
            width: 20%;
            margin-right: 40px;
            margin-left: 40px;
        }

        .button-play-master button, .button-play-join button {
            width: 100%;
        }

    </style>
@endsection

@section('body')
    <div class="main">
        <div class="container text-center">
            <h1 class="ml2">KCVintar</h1>
            <div class="button-play-group">
                {{-- <div class="button-play-master">
                    <button class="button" onclick="location.href='{{url('/room/create')}}';">
                        <span>Master</span>
                    </button>
                </div> --}}
                <div class="button-play-join" onclick="location.href='{{url('/user/create')}}';">
                    <button class="button">
                        <span>Join Room</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('js')

    
    <script>
        // Wrap every letter in a span
        $('.ml2').each(function(){
            $(this).html($(this).text().replace(/([^\x00-\x80]|\w)/g, "<span class='letter'>$&</span>"));
        });

        anime.timeline({loop: false})
        .add({
            targets: '.ml2 .letter',
            scale: [4,1],
            opacity: [0,1],
            translateZ: 0,
            easing: "easeOutExpo",
            duration: 2000,
            delay: function(el, i) {
                return 120*i;
            }
        })


        document.querySelector('.button-play-join .button').onmousemove = function (e) {
            var x = e.pageX - e.target.offsetLeft;
            var y = e.pageY - e.target.offsetTop;

            e.target.style.setProperty('--x', x + 'px');
            e.target.style.setProperty('--y', y + 'px');
        };

        
    </script>
@endsection