<?php

namespace App\Providers;

use Illuminate\Pagination\Paginator;
use Illuminate\Support\ServiceProvider;
use App\Models\Post;
use App\Policies\PostPolicy;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\Auth;
use App\Observers\PostObserver;
use App\Events\UserRegistered;
use App\Listeners\SendWelcomeEmail;
use Illuminate\Support\Facades\Event;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Event::listen(
            UserRegistered::class,
            SendWelcomeEmail::class,
        );
        Post::observe(PostObserver::class);
        Paginator::useBootstrap();
        Gate::policy(Post::class, PostPolicy::class);
        // Gate::define('create_post', function () {
        //     Auth::user()->is_admin;
        // });
        // Gate::define('edit_post', function () {
        //     Auth::user()->is_admin;
        // });
    }
}
