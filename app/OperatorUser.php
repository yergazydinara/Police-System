<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OperatorUser extends Model
{
    protected $fillable = [
        'user_id',
        'status_id',
    ];

    public function user() {
      return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function status() {
        return $this->hasOne(Status::class, 'id', 'status_id');
    }

    public function incidents() {
        return $this->hasMany(Incident::class, 'operator_id', 'id');
    }
}
