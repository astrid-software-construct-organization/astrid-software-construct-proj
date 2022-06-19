<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Attendance extends Model
{
    use HasFactory;

    protected $fillable = [
        'staffID',
        'attendType',
        'date',
        'datetime'
    ];

    public function staff(){
        return $this->belongsTo(Staff::class);
    }
}
