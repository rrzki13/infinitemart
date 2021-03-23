<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class OurTeamController extends Controller
{
    public function index(Request $request)
    {
        $data = [
            "css" => "OurTeam.css",
            "OurTeam" => "Halaman Team",
            "middleware" => "user"
        ];
        return view("user/OurTeam2", $data);
    }
}
