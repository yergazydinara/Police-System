<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class IncidentDegree extends Model
{
    protected $fillable = [
        'degree',
        'degree_name',
    ];
}
