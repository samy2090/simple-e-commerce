<?php

use App\Models\SiteContent;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\SiteContentController;
use App\Http\Controllers\SiteSettingsController;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;

// dd(LaravelLocalization::getCurrentLocale());



Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');






Route::middleware('auth')->group(function () {
    Route::resource('/sitecontent', SiteContentController::class);
    Route::resource('/sitesettings', SiteSettingsController::class);
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});
require __DIR__.'/auth.php';



Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => [ 'localeSessionRedirect', 'localizationRedirect', 'localeViewPath' ]
    ], function(){ 
        
        Route::get('register', [SiteContentController::class, 'getPage'])->defaults('slug', 'home');

        Route::get('/', [SiteContentController::class, 'getPage'])->defaults('slug', 'home');

        Route::get('/{slug?}', [SiteContentController::class, 'getPage'])->name('page.show');
    });