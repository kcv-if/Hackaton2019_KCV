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

        .row.dot {
            width: 20%;
            margin: auto;
            margin-top: 40vh;
        }

        .pinkBg {
            background-color: #ed184f!important;
            background-image: linear-gradient(90deg, #fd5581, #fd8b55);
        }
        .intro-banner-vdo-play-btn{
            height:30px;
            width:30px;
            position: relative;
            top:50%;
            left:50%;
            text-align:center;
            margin:-15px 0 0 -15px;
            border-radius:100px;
            z-index:1
        }
        
        .intro-banner-vdo-play-btn .ripple{
            position:absolute;
            width:80px;
            height:80px;
            z-index:-1;
            left:50%;
            top:50%;
            opacity:0;
            margin:-40px 0 0 -40px;
            border-radius:100px;
            -webkit-animation:ripple 1.8s infinite;
            animation:ripple 1.8s infinite
        }

        @-webkit-keyframes ripple{
            0%{
                opacity:1;
                -webkit-transform:scale(0);
                transform:scale(0)
            }
            100%{
                opacity:0;
                -webkit-transform:scale(1);
                transform:scale(1)
            }
        }
        @keyframes ripple{
            0%{
                opacity:1;
                -webkit-transform:scale(0);
                transform:scale(0)
            }
            100%{
                opacity:0;
                -webkit-transform:scale(1);
                transform:scale(1)
            }
        }
        .intro-banner-vdo-play-btn .ripple:nth-child(2){
            animation-delay:.3s;
            -webkit-animation-delay:.3s
        }
        .intro-banner-vdo-play-btn .ripple:nth-child(3){
            animation-delay:.6s;
            -webkit-animation-delay:.6s
        }

        .button-play .button {
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

        .button-play .button span {
            position: relative;
            pointer-events: none;
            padding-left: 60px;
            padding-right: 60px;
        }

        .button-play .button::before {
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
            
        .button-play .button:hover::before {
            --size: 600px;
        }

        .button-play {
            margin-top: 40px;
        }
        
        .button-play button {
            
        }

    </style>
@endsection

@section('body')
    <div class="main">
        <div class="container text-center">
            
            <div class="row dot">

                <div class="col-md-4">
                    <div class="intro-banner-vdo-play-btn pinkBg">
                            <i class="glyphicon glyphicon-play whiteText" aria-hidden="true"></i>
                        <span class="ripple pinkBg"></span>
                        <span class="ripple pinkBg"></span>
                        <span class="ripple pinkBg"></span>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="intro-banner-vdo-play-btn pinkBg">
                            <i class="glyphicon glyphicon-play whiteText" aria-hidden="true"></i>
                        <span class="ripple pinkBg"></span>
                        <span class="ripple pinkBg"></span>
                        <span class="ripple pinkBg"></span>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="intro-banner-vdo-play-btn pinkBg">
                            <i class="glyphicon glyphicon-play whiteText" aria-hidden="true"></i>
                        <span class="ripple pinkBg"></span>
                        <span class="ripple pinkBg"></span>
                        <span class="ripple pinkBg"></span>
                    </div>
                </div>    

            </div>

            <div class="button-play" onclick="location.href='{{url('/play')}}';">
                <button class="button">
                    <span>Play Now</span>
                </button>
            </div>
        
        </div>
    </div>
@endsection

@section('js')
@endsection