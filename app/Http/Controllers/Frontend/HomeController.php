<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use File;
use App\Models\{Hero, TyperTitle, Service, About, PortfolioSectionSetting, Category, PortfolioItem};

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $hero = Hero::first();
        $typer_titles = TyperTitle::all();
        $services = Service::all();
        $about = About::first();
        $portfolio_section_setting = PortfolioSectionSetting::first();
        $categories = Category::all();
        $portfolio_items = PortfolioItem::all();
        return view('frontend.home',
        compact(
            'hero',
            'typer_titles',
            'services',
            'about',
            'portfolio_section_setting',
            'categories',
            'portfolio_items'
        ));
    }

    public function showPortfolio($id) {
        $portfolio_item = PortfolioItem::findOrFail($id);
        return view('frontend.portfolio-detail', compact('portfolio_item'));
    }
}
