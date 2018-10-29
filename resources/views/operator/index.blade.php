@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-24">
            <div class="card">
                <div class="card-header">
                    <a>Operator Dashboard</a>
                    <a class="button" href="{{ route('incident.create') }}">Create Incident</a>
                </div>

                <div class="card-body">
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Status</th>
                            <th>Operator</th>
                            <th>Police</th>
                            <th>Description</th>
                            <th>Location</th>
                            <th>Clinet Name</th>
                            <th>Client Phone</th>
                            <th>Time</th>
                        </tr>
                        @foreach ($incidents as $incident)
                            <tr>
                                <td>{{ $incident->id }}</td>
                                <td>NULL</td>
                                <td>{{ $incident->operator->user->name }}</td>
                                <td>{{ $incident->police->user->name }}</td>
                                <td>{{ $incident->description }}</td>
                                <td>{{ $incident->location }}</td>
                                <td>{{ $incident->client_name }}</td>
                                <td>{{ $incident->client_phone }}</td>
                                <td>{{ $incident->created_at }}</td>
                            </tr>
                        @endforeach
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>
@endsection
