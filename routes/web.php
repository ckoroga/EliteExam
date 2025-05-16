<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\AdminDashboardController;
use App\Http\Controllers\AlbumController;
use App\Http\Controllers\ArtistController;
use Illuminate\Support\Facades\Auth;

Route::get('/login', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('/login', [LoginController::class, 'login'])->name('login.perform');


Route::middleware(['auth'])->group(function () {
    Route::get('/admin/dashboard', [AdminDashboardController::class, 'index'])->name('admin.dashboard');
    Route::get('/admin/album', [AdminDashboardController::class, 'album'])->name('admin.album');
    Route::get('/admin/artists', [AdminDashboardController::class, 'artist'])->name('admin.artists');

    // album routes action
    Route::resource('albums', AlbumController::class);
    Route::put('/albums/{id}', [AlbumController::class, 'updatealbum'])->name('albums.update');

    // artist routes action
    Route::put('/artists/{id}', [ArtistController::class, 'updateartist'])->name('artists.update');
    Route::delete('/artists/{id}', [ArtistController::class, 'destroy'])->name('artists.destroy');

    //Display list of albums based on the searched artist
    Route::get('/admin/search-albums', [AdminDashboardController::class, 'searchAlbums'])->name('admin.searchAlbums');

    Route::post('/logout', function () {
        Auth::logout();
        request()->session()->invalidate();
        request()->session()->regenerateToken();
        return redirect('/login');
    })->name('logout');
});






