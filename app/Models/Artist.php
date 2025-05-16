<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Artist extends Model
{
    protected $table = 'artists';

    protected $primaryKey = 'id'; 

    protected $fillable = ['code', 'name', 'created_at', 'updated_at']; 

    public function albums()
{
    return $this->hasMany(Album::class);
}


}
