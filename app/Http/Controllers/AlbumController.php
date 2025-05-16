<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Album;
use Illuminate\Support\Facades\Storage;

class AlbumController extends Controller
{

    public function updatealbum(Request $request, $id)
    {
        $album = Album::findOrFail($id);

        $request->validate([
            'name' => 'required|string|max:255',
            'year' => 'required|string',
            'sales' => 'required|numeric',
            'cover' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048'
        ]);

        $album->name = $request->name;
        $album->year = $request->year;
        $album->sales = $request->sales;

        if ($request->hasFile('cover')) {
            $imagePath = $request->file('cover')->store('covers', 'public');
            $album->cover = '/storage/' . $imagePath;
        }

        $album->save();

        return redirect()->back()->with('success', 'Album updated successfully.');
    }
    public function destroy($id)
    {
        $album = Album::findOrFail($id);

        // If you want to delete the album cover from storage
        if ($album->cover) {
            $coverPath = str_replace('/storage/', '', $album->cover);
            Storage::disk('public')->delete($coverPath);
        }

        $album->delete();

        return redirect()->back()->with('success', 'Album deleted successfully.');
    }
}
