<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PoliceUser extends Model
{
    protected $fillable = [
        'user_id',
        'status_id',
        'location',
    ];

    public function user() {
      return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function status() {
        return $this->hasOne(Status::class, 'id', 'status_id');
    }

    public function incidents() {
        return $this->hasMany(Incident::class, 'police_id', 'id');
    }
}
