<?php

namespace App\Http\Controllers;

use App\Models\Artist;
use Illuminate\Http\Request;

class ArtistController extends Controller
{
    
    public function updateartist(Request $request, $id)
    {
        $artist = Artist::findOrFail($id);

        $request->validate([
            'name' => 'required|string|max:255',
            'code' => 'required|string',
        ]);

        $artist->name = $request->name;
        $artist->code = $request->code;

        $artist->save();

        return redirect()->back()->with('success', 'Artist updated successfully.');
    }

    public function destroy($id)
    {
        $artist = Artist::findOrFail($id);

        $artist->delete();

        return redirect()->back()->with('success', 'Artist deleted successfully.');
    }
}

