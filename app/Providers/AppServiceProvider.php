<?php

namespace App\Providers;

use Illuminate\Pagination\Paginator;
use Illuminate\Support\ServiceProvider;
use App\Models\Post;
use App\Policies\PostPolicy;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\Auth;

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
