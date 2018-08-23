<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
//thêm thư viện này để bỏ lỗi ký tự quá dài trong migrate
use Illuminate\Support\Facades\Schema;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //thêm đoạn code này để bỏ lỗi ký tự quá dài trong migrate
        Schema::defaultStringLength(191); // mặc định là 255
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
