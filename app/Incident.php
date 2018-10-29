<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Incident extends Model
{
    protected $fillable = [
        'operator_id',
        'police_id',
        'degree_id',
        'description',
        'location',
        'client_name',
        'client_phone',
    ];

    public function operator() {
        return $this->hasOne(OperatorUser::class, 'id', 'operator_id');
    }

    public function police() {
        return $this->hasOne(PoliceUser::class, 'id', 'police_id');
    }

    public function degree() {
        return $this->hasOne(IncidentDegree::class, 'id', 'degree_id');
    }
}
