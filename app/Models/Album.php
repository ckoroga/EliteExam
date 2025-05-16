<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Album extends Model
{
    protected $table = 'albums';

    protected $primaryKey = 'id';

    protected $fillable = ['artist_id', 'name', 'year', 'sales', 'cover', 'created_at', 'updated_at'];

    public function artist()
    {
        return $this->belongsTo(Artist::class);
    }
}
