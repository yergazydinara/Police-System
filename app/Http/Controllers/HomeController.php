<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\OperatorUser;
use App\PoliceUser;
use App\AdminUser;
use App\Incident;
use App\User;
use Auth;

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
        }

        return view('home');
    }
}
