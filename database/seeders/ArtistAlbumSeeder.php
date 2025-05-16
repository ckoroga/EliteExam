<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Artist;
use App\Models\Album;
use Faker\Factory as Faker;

class ArtistAlbumSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $faker = Faker::create();
        $csv = fopen(database_path('data/albums.csv'), 'r');
        fgetcsv($csv); // skip header

        while ($row = fgetcsv($csv)) {
            [$artist_name, $album_name, $sales, $year] = $row; // fixed order
        
            $artist = Artist::firstOrCreate(
                ['name' => $artist_name],
                ['code' => $faker->unique()->bothify('AR###')]
            );
        
            Album::create([
                'artist_id' => $artist->id,
                'name' => $album_name,
                'year' => $year,
                'sales' => $sales,
                'cover' => $faker->imageUrl(640, 480, 'music', true)
            ]);
        
        }

        fclose($csv);
    }
}
