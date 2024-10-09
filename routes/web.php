<?php

use App\Http\Controllers\{ProfileController, PostController};
use Illuminate\Support\Facades\{Route, Mail};
use App\Mail\PostPublished;
use App\Jobs\SendMail;
use App\Events\UserRegistered;
use Illuminate\Support\Facades\App;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::group(['middleware'=>'auth'], function () {
    Route::get('/posts/trash', [PostController::class, 'trashed'])->name('posts.trashed');
    Route::get('/posts/{id}/restore', [PostController::class, 'restore'])->name('posts.restore');
    Route::delete('/posts/{id}/force-delete', [PostController::class, 'forceDelete'])->name('posts.force.delete');

    Route::resource('posts', PostController::class);
});

Route::get('/send-mail', function () {
    SendMail::dispatch();
    dd('Mail Has Been Sent');
});

Route::get('/user-register', function () {
    $email = 'user@app.com';
    event(new UserRegistered($email));
    dd('Message Sent');
});

Route::get('/greeting/{locale}', function ($locale) {
    App::setLocale($locale);
    return view('greeting');
})->name('greeting');

require __DIR__.'/auth.php';
