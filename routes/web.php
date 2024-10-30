<?php

use Illuminate\Support\Facades\{Route, Mail};
use App\Http\Controllers\Frontend\HomeController;
use App\Http\Controllers\Admin\{DashboardController, ProfileController, HeroController, TyperTitleController, ServiceController};
use App\Http\Controllers\Admin\{AboutController, CategoryController, PortfolioItemController, PortfolioSettingController};
use App\Http\Controllers\Admin\{SkillSettingController, SkillItemController, ExperienceController, FeedbackController};
use App\Http\Controllers\Admin\{FeedbackSettingController, BlogCategoryController, BlogController, BlogSettingController};
use App\Http\Controllers\Admin\{ContactSettingController, SocialLinkController, FooterInfoController};

Route::get('/', [HomeController::class, 'index'])->name('home');

Route::get('/portfolio-details/{id}', [HomeController::class, 'showPortfolio'])->name('show.portfolio');
Route::get('/blog-details/{id}', [HomeController::class, 'showBlog'])->name('show.blog');
Route::get('/blogs', [HomeController::class, 'allBlog'])->name('all.blog');
Route::post('/contact', [HomeController::class, 'contact'])->name('contact');

Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard')->middleware(['auth', 'verified']);

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

/* Admin Route */
Route::group(['middleware'=>['auth'], 'prefix'=>'admin', 'as'=>'admin.'], function () {
    Route::resource('hero', HeroController::class);
    Route::resource('typer-title', TyperTitleController::class);

    /* Service Route */
    Route::resource('service', ServiceController::class);

    /* About Route */
    Route::get('resume/download', [AboutController::class, 'resumeDownload'])->name('resume.download');
    Route::resource('about', AboutController::class);

    /* Portfolio Category Route */
    Route::resource('category', CategoryController::class);

    /* Portfolio Item Route */
    Route::resource('portfolio-item', PortfolioItemController::class);

    /* Portfolio Section Setting Route */
    Route::resource('portfolio-section-setting', PortfolioSettingController::class);

    /* Skill Section Setting Route */
    Route::resource('skill-section-setting', SkillSettingController::class);

    /* Skill Item Route */
    Route::resource('skill-item', SkillItemController::class);

    /* Experience Route */
    Route::resource('experience', ExperienceController::class);

    /* Feedback Route */
    Route::resource('feedback', FeedbackController::class);

    /* Feedback Setting Route */
    Route::resource('feedback-setting', FeedbackSettingController::class);

    /* Blog Category Route */
    Route::resource('blog-category', BlogCategoryController::class);

    /* Blog Route */
    Route::resource('blog', BlogController::class);

    /* Blog Setting Route */
    Route::resource('blog-setting', BlogSettingController::class);

    /* Contact Setting Route */
    Route::resource('contact-setting', ContactSettingController::class);

    /* Footer Social Link Route */
    Route::resource('social-link', SocialLinkController::class);

    /* Footer Info Route */
    Route::resource('footer-info', FooterInfoController::class);
});
