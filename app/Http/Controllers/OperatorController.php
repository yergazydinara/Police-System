<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\OperatorUser;
use App\IncidentDegree;
use App\Incident;
use Auth;

class OperatorController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function incidentCreate()
    {
        return view('operator.incident.create', ['degrees' => IncidentDegree::all()]);
    }

    public function incidentStore(Request $request)
    {
        $this->validate($request, [
            'degree_id' => 'required',
            'location' => 'required',
            'client_name' => 'required',
            'client_phone' => 'required',
            'description' => 'required',
        ]);

        $incident = new Incident;

        $incident->operator_id = OperatorUser::where('user_id', Auth::user()->id)->first()->id;
        $incident->police_id = app(\App\Http\Controllers\PoliceController::class)->getClosestPolice($request->location)->id;
        $incident->degree_id = $request->degree_id;
        $incident->location = $request->location;
        $incident->client_name = $request->client_name;
        $incident->client_phone = $request->client_phone;
        $incident->description = $request->description;

        $incident->save();

        return redirect()->route('home');
    }
}
