<?php

// AdminDashboardController.php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Album;
use App\Models\Artist;

class AdminDashboardController extends Controller
{
    public function index()
    {
        // Get all albums and artists
        $dashboard = Album::all();
        
        // Get total album sales per artist (with sum)
        $artists = Artist::withSum('albums', 'sales')->get();
        
        // Get all artist data with their albums
        $artistSales = Artist::with('albums')->get();

        // Calculate the top artist with the highest combined album sales
        $topArtist = Artist::withSum('albums', 'sales')
                           ->orderByDesc('albums_sum_sales')
                           ->first(); // Get the top artist by sales

        // Get total number of artists and albums, and total sales
        $totalArtists = Artist::count();
        $totalAlbums = Album::count();
        $totalSales = Album::sum('sales');

        return view('admin.dashboard', compact(
            'dashboard', 
            'artists', 
            'artistSales', 
            'topArtist', 
            'totalArtists', 
            'totalAlbums', 
            'totalSales'
        ));
    }
    public function searchAlbums(Request $request)
    {
        $artistName = $request->input('artist_name', '');  // Default to empty if not provided
    
        if ($artistName != '') {
            $artist = Artist::where('name', 'like', '%' . $artistName . '%')->first();
        } else {
            $artist = null;
        }
    
        // Fetch albums only if an artist is found
        if ($artist) {
            $albums = $artist->albums;
        } else {
            $albums = collect();  // Empty collection if no artist found or no search query
        }
    
        // Prepare other necessary data
        $dashboard = Album::all();
        $artists = Artist::withSum('albums', 'sales')->get();
        $artistSales = Artist::with('albums')->get();
        $topArtist = Artist::withSum('albums', 'sales')
                           ->orderByDesc('albums_sum_sales')
                           ->first();
        $totalArtists = Artist::count();
        $totalAlbums = Album::count();
        $totalSales = Album::sum('sales');
    
        return view('admin.dashboard', compact(
            'albums',
            'artist',
            'dashboard',
            'artists',
            'artistSales',
            'topArtist',
            'totalArtists',
            'totalAlbums',
            'totalSales'
        ));
    }
    



    public function artist()
    {
        $artists = Artist::all(); // 
        return view('admin.artist', compact('artists'));
    }


    public function album()
    {
        $albums = Album::all(); 
        return view('admin.album', compact('albums'));
    }


    public function artistsum() {}
}
