<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\PoliceUser;

class PoliceController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function getClosestPolice(String $location)
    {
        $allPolice = PoliceUser::all();

        return $allPolice->first();
    }
}
