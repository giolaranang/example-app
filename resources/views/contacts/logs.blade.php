<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="{{ asset('css/custom.css') }}" rel="stylesheet">
    <title>Document</title>
</head>
<body>
    <h1>Logs</h1>
    <div>
        <a class="button" href="{{route('dashboard')}}">Back</a>
        <table border="1">
            <tr>
                <th>Description</th>
                <th>Additional Information</th>
                <th>Time Created</th>
                <th>Time Updated</th>
            </tr>
            @foreach($logs as $log)
                <tr>
                    @switch($log->description)
                        @case("created")
                        <td>You have created a contact </td>
                        <td> 
                            @foreach (json_decode($log->properties) as $name)
                            {{ $name->name }}
                            @endforeach
                        </td>
                        @break
                        @case("deleted")
                        <td>You have Deleted a contact </td>
                        <td>
                            @foreach (json_decode($log->properties) as $name)
                            {{ $name->name }}
                            @endforeach
                        </td>
                        @break
                        @case("updated")
                        <td>You have Updated a contact </td>
                        <td>
                            @foreach (json_decode($log->properties) as $name)
                            {{ $name->name }}
                            @endforeach
                        </td>
                        @break
                        @case("restored")
                        <td>You have Restored a contact </td>
                        <td>
                            @foreach (json_decode($log->properties) as $name)
                            {{ $name->name }}
                            @endforeach
                        </td>
                        @break
                        @default
                        
                    @endswitch
                
                    <td>{{$log->created_at}}</td>
                    <td>{{$log->updated_at}}</td>              
                
                </tr>
            @endforeach
        </table>
    </div>
</body>
</html>