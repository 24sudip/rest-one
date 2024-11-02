<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\{Blog, SkillItem, PortfolioItem, Feedback};

class DashboardController extends Controller
{
    public function index() {
        $blogCount = Blog::count();
        $skillCount = SkillItem::count();
        $portfolioCount = PortfolioItem::count();
        $feedbackCount = Feedback::count();
        return view('admin.dashboard', compact('blogCount','skillCount','portfolioCount','feedbackCount'));
    }
}
