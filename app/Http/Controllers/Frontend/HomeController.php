<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use File;
use App\Models\Hero;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $hero = Hero::first();
        return view('frontend.home', compact('hero'));
    }
}
