<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('home');
})->name('home');

Route::get('/waiting', function () {
    return view('waiting');
})->name('waiting');

Route::get('/showroom', function () {
    return view('room.showroom');
})->name('showroom');

Route::get('/scoreboard', function () {
    return view('scoreboard');
})->name('scoreboard');

Route::prefix('/room')->group(function () {
    Route::get('/create', 'RoomController@create')->name('room.create');
    Route::post('/create', 'RoomController@store')->name('room.store');
    Route::prefix('/{id_room}')->group(function () {
        Route::get('/', 'RoomController@index')->name('room');
        Route::get('/soal', 'RoomController@soal')->name('soal');
        Route::post('/soal', 'RoomController@addSoal')->name('soal.add');
        Route::get('/scoreboard', 'RoomController@scoreboard')->name('room.scoreboard');
        Route::get('/scoreboard/data', 'RoomController@scoreboard_data')->name('room.scoreboard.data');
        Route::post('/submit', 'RoomController@submit')->name('room.submit');
        Route::post('/start', 'RoomController@start')->name('room.start');
    });
});

Route::get('/master', function () {
    return view('master_view');
});

Route::prefix('/user')->group(function() {
    Route::get('/create', 'UserController@create')->name('user');
    Route::post('/create', 'UserController@store')->name('user.create');
});
