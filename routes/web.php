<?php

use Illuminate\Support\Facades\{Route, Mail};
use App\Http\Controllers\Frontend\HomeController;
use App\Http\Controllers\Admin\{DashboardController, ProfileController, HeroController, TyperTitleController, ServiceController};

Route::get('/', [HomeController::class, 'index'])->name('home');

Route::get('/blog', function () {
    return view('frontend.blog');
});

Route::get('/blog-detail', function () {
    return view('frontend.blog-detail');
});

Route::get('/portfolio-detail', function () {
    return view('frontend.portfolio-detail');
});

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
});
