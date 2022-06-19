<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Finance extends Model
{
    use HasFactory;

    protected $fillable = [
        'store_id',
        'record_type',
        'date',
        'account',
        'category',
        'amount',
        'note',
        'description'
    ];

    public function stores()
    {
        return $this->belongsTo(Store::class);
    }
}
