<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;

class Contact extends Model
{
    use HasFactory, LogsActivity, SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable =[
        'name',
        'email',
        'number',
        'address',
        'notes'
    ];

    protected $table = 'contacts_list';

    public function getActivitylogOptions():LogOptions
    {
        return LogOptions::defaults()->logOnly(['name','email','number','address']);
    }

    public function notes(){
        return $this->hasMany(Note::class);
    }
}
