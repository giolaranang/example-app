<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Log extends Model
{
    use HasFactory;

    protected $fillable =[
        'description',
        'properties',
        'created_at',
        'updated_at'
    ];

    protected $table = 'activity_log';
}
