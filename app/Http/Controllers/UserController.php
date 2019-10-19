<?php

namespace App\Http\Controllers;

use App\Events\UserJoin;
use App\User;
use App\Room;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class UserController extends Controller
{
    public  function create(){
        return view('user');
    }

    public function store(Request $request){
        try {
            $room = Room::all()->where('kode', $request->kode_room)->first();

            $user = new User();
            $user->username = $request->username;
            $user->save();
            $current_player = unserialize($room->player_id);
            array_push($current_player, $user->id);
            $room->player_id = serialize($current_player);
            $room->save();
            
            //broadcast
            broadcast(new UserJoin($room))->toOthers();
            $request->session()->put('user_id', $user->id);
            return redirect()->route('room', ['id_room' => $room->kode]);
            
        }catch(\Exception $e) {
            $eMessage = 'error: ' . $e->getMessage();
            Log::emergency($eMessage);
            return redirect()->back()->with('error', 'Terjadi kesalahan, ID Room tidak ditemukan!');
        }
        
    }

    
}
