<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $data = [
            "token" => null,
            "session" => null,
            "css" => "home.css",
            "middleware" => "user"
        ];

        return view("user/home2", $data);
    }

    public function toko($id)
    {
        $data = [
            "toko_section" => true,
            "css" => "dashboard.css",
            "idToko" => $id,
            "middleware" => "user"
        ];

        return view("user/toko2", $data);
    }
}
