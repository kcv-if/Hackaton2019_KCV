@extends('master')
@section('css')
    <style>
        html, body {
            background-color: #fff;
            height: 100vh;
            font-family: 'Roboto+Condensed', sans-serif;
            background: url('/images/bg2.jpg');
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
            width: 50%;
        }
        
        .form-group {
            margin-bottom: auto !important;
        }

        .button-create .button {
            position: relative;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            background: #FF4818;
            padding: 1em 2.5em;
            border: none;
            color: white;
            font-size: 1.2em;
            cursor: pointer;
            outline: none;
            overflow: hidden;
            border-radius: 100px;
        }

        .button-create .button span {
            position: relative;
            pointer-events: none;
        }

        .button-create .button::before {
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
            
        .button-create .button:hover::before {
            --size: 600px;
        }

        .button-create {
            margin-top: 10px;
        }

        .container .form-group label{
            margin-top: 10px;
        }

        @media (max-width: 768px) {
            .button-create .button {
                padding: 0.4em 1.5em;
            }
            h3 {
                font-size: 1.25rem;
            }
            label {
                margin-bottom: auto;
            }
        }
    </style>
@endsection
@section('body')
    <div class="main">
        <div class="container text-center">
            @if(Session::has('error'))
                <div class="alert alert-danger">
                    {{ Session::get('error') }}
                </div>
            @endif
            <form method="POST" action="{{ route('user.create') }}">
                @csrf
                <div class="form-group">
                    <label for="username"><h3>Username:</h3></label>
                    <input class="form-control form-control-lg form-control-sm" type="text" name="username" required>
                    
                    <label for="kode_room"><h3>Kode Room:</h3></label>
                    <input class="form-control form-control-lg" type="text" name="kode_room" required>
                    
                    <div class="button-create">
                        <button class="button" type="submit" value="submit">
                            <span>Join Room</span>
                        </button>
                    </div>


                    
                </div>
            </form>
        
        </div>
    </div>
@endsection
@section('js')

@endsection