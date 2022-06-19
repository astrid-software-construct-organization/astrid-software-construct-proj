<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Store extends Model
{
    use HasFactory;

    protected $fillable = [
        'store_name',
        'store_location',
        'establish_date'
    ];

   // protected $guarded = ['id'];

    public function staff()
    {
        return $this->hasMany(Staff::class, 'id', 'storeID');
    }

    public function finance()
    {
        return $this->hasMany(Finance::class, 'id', 'store_id');
    }

    public function supply()
    {
        return $this->hasMany(Supply::class, 'id', 'supply_id');
    }

    public function order()
    {
        return $this->hasMany(Order::class, 'id', 'store_id');
    }
}
