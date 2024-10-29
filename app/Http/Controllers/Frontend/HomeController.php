<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use File;
use App\Models\{Hero, TyperTitle, Service, About, PortfolioSectionSetting, Category, PortfolioItem, SkillSectionSetting};
use App\Models\{SkillItem, Experience, Feedback, FeedbackSetting, Blog, BlogSetting};

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
        $skill = SkillSectionSetting::first();
        $skill_items = SkillItem::all();
        $experience = Experience::first();
        $feedbacks = Feedback::all();
        $feedback_settings = FeedbackSetting::first();
        $blogs = Blog::latest()->take(5)->get();
        $blog_settings = BlogSetting::first();
        return view('frontend.home',
        compact(
            'hero',
            'typer_titles',
            'services',
            'about',
            'portfolio_section_setting',
            'categories',
            'portfolio_items',
            'skill',
            'skill_items',
            'experience',
            'feedbacks',
            'feedback_settings',
            'blogs',
            'blog_settings'
        ));
    }

    public function showPortfolio($id) {
        $portfolio_item = PortfolioItem::findOrFail($id);
        return view('frontend.portfolio-detail', compact('portfolio_item'));
    }

    public function showBlog($id) {
        $blog = Blog::findOrFail($id);
        $previousPost = Blog::where('id','<', $blog->id)->orderBy('id','desc')->first();
        $nextPost = Blog::where('id','>', $blog->id)->orderBy('id','asc')->first();
        return view('frontend.blog-detail', compact('blog','previousPost','nextPost'));
    }

    public function allBlog() {
        $blogs = Blog::latest()->paginate(3);
        return view('frontend.blog', compact('blogs'));
    }

    public function contact(Request $request) {
        $request->validate([
            'name'=>['required','max:200'],
            'subject'=>['required','max:300'],
            'email'=>['required','email'],
            'message'=>['required','max:2000'],
        ]);
    }
}
