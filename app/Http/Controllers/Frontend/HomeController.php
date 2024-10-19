<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use File;
use App\Models\{Hero, TyperTitle, Service, About};

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $hero = Hero::first();
        $typer_titles = TyperTitle::all();
        $services = Service::all();
        $about = About::first();
        return view('frontend.home', compact('hero','typer_titles','services','about'));
    }
}
