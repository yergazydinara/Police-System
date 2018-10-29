@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        @if ($errors->any())
            <div class="errors">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <div class="col-md-24" style="width:100%">
            <div class="card">
                <div class="card-header">
                    <a>Create Incident</a>
                </div>

                <div class="card-body">
                    <form method="get" action="{{ route('incident.store') }}">
                        <p>
                            Degree:<br>
                            <select name="degree_id" style="width:100%">
                                @foreach ($degrees as $degree)
                                    <option value="{{ $degree->id }}">{{ $degree->degree_name }}</option>
                                @endforeach
                            </select>
                        </p>
                        <p>
                            Location:<br>
                            <input type="text" name="location" style="width:100%"><br>
                        </p>
                        <p>
                            Client Name:<br>
                            <input type="text" name="client_name" style="width:100%">
                        </p>
                        <p>
                            Client Phone:<br>
                            <input type="text" name="client_phone" style="width:100%">
                        </p>
                        <p>
                            Description:<br>
                            <input type="text" name="description" style="width:100%">
                        </p>

                        <button class="button" type="submit" style="background: #ea2525;float:right">CREATE!</button>
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>
@endsection
