<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Staff extends Model
{
    use HasFactory;

    protected $fillable = [
        'storeID',
        'staff_name',
        'gender',
        'DOB',
        'ic_no',
        'telNo',
        'emergency_telNo',
        'address',
        'salaryHour',
        'salaryDay',
    ];

    public function getstore()
    {
        return $this->belongsTo(Store::class);
    }

    public function attendance(){
        return $this->hasMany(Attendance::class, 'id', 'staffID');
    }
}
