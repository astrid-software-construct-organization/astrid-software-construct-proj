<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Supply extends Model
{
    use HasFactory;

    protected $fillable = [
        'store_id',
        'itemName',
        'quantity',
    ];

    public function stores()
    {
        return $this->belongsTo(Store::class);
    }
}


