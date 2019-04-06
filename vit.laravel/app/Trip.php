<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Trip extends Model
{
    protected $fillable = [
		'id',
    	'country',
    	'personal',
    	'date_out',
    	'date_in'
    ];
}
