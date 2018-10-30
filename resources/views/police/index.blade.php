@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-24">
            <div class="card">
                <div class="card-header">
                    <a>Police Dashboard</a>
                    <form method="get" action="{{ route('police.status') }}">
                        <select name="status_id">
                            @foreach ($statuses as $status)
                                <option value="{{ $status->id }}" {{ $police->status_id == $status->id ? 'selected' : '' }}>{{ $status->status_name }}</option>
                            @endforeach
                        </select>
                        <button type="submit" style="margin:0">Update Status</button>
                    </form>
                    <a>Location: {{ $police->location }}</a>
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
                        @foreach ($police->incidents as $incident)
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
