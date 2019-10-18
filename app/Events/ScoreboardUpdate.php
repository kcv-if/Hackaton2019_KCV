<?php

namespace App\Events;

use App\Skor;
use Illuminate\Broadcasting\Channel;
use Illuminate\Queue\SerializesModels;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Support\Facades\DB;

class ScoreboardUpdate implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    /**
     * Create a new event instance.
     *
     * @return void
     */
    public $skor;

    public function __construct(Skor $skor)
    {
        $this->skor = $skor;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        return new Channel('rooms.' . $this->skor->room_id);
    }

//     public function broadcastWith()
//     {
//         // return scoreboard data
// //        $scoreboard = DB::table('skors')
// //            ->where('room_id', '=', $this->skor->room_id)
// //            ->join('users', function ($join){
// //                $join->on('skors.user_id', '=', 'users.id');
// //            })
// //            ->select('users.username', 'skors.*')
// //            ->orderBy('skors.skor_user', 'desc')
// //            ->get();
// //        return $scoreboard;
//         return ['scoreboard' => 'scoreboard'];
//     }
}
