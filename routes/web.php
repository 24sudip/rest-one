<?php

use App\Http\Controllers\{ProfileController, PostController};
use Illuminate\Support\Facades\{Route, Mail};
use App\Mail\PostPublished;
use App\Jobs\SendMail;

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

// $message->from('john@johndoe.com', 'John Doe');
// $message->sender('john@johndoe.com', 'John Doe');
// $message->to('john@johndoe.com', 'John Doe');
// $message->cc('john@johndoe.com', 'John Doe');
// $message->bcc('john@johndoe.com', 'John Doe');
// $message->replyTo('john@johndoe.com', 'John Doe');
// $message->subject('Subject');
// $message->priority(3);
// $message->attach('pathToFile');

require __DIR__.'/auth.php';
