<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Personal extends Model
{
    protected $fillable = [
		'id',
    	'fio',
    	'status'
    ];
}
