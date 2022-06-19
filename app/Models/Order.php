<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $fillable = [
        'store_id',
        'order',
        'quantity',
        'description',
        'order_date'
    ];

    public function stores()
    {
        return $this->belongsTo(Store::class);
    }
}
