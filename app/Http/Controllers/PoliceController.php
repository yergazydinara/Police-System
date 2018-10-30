<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\PoliceUser;
use Auth;
use Location;

class PoliceController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    private function distance($a, $b)
    {
        list($lat1, $lon1) = $a;
        list($lat2, $lon2) = $b;

        $theta = $lon1 - $lon2;
        $dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) +  cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta));
        $dist = acos($dist);
        $dist = rad2deg($dist);
        $miles = $dist;
        return $miles;
    }

    public function getClosestPolice(String $location)
    {
        $allPolice = PoliceUser::where('status_id', PoliceUser::$STATUS_ONLINE)->get();
        $minDistance = 99;
        $closestPolice = null;

        foreach ($allPolice as $police) {
            $distPoilice = $this->distance(explode(',', $police->location), explode(',', $location));
            if ($distPoilice < $minDistance) {
                $minDistance = $distPoilice;
                $closestPolice = $police;
            }
        }

        return $closestPolice;
    }

    public function updateStatus(Request $request)
    {
        $police = PoliceUser::where('user_id', Auth::user()->id)->first();

        $police->status_id = $request->status_id;
        $police->location = Location::get(\Request::ip())->latitude . ', ' . Location::get(\Request::ip())->longitude;

        $police->save();

        return redirect()->route('home');
    }
}
