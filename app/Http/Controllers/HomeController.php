<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\OperatorUser;
use App\PoliceUser;
use App\AdminUser;
use App\Incident;
use App\Status;
use App\User;
use Auth;
use Location;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (Auth::user()->type_id == User::$OPERATOR_ID) {
            return view('operator.index', ['incidents' => Incident::all()]);
        } elseif (Auth::user()->type_id == User::$POLICE_ID) {
            return view('police.index', ['police' => PoliceUser::where('user_id', Auth::user()->id)->first(),
                                         'statuses' => Status::all()]);
        }

        return view('home');
    }
}
