<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="{{ asset('css/custom.css') }}" rel="stylesheet">
    <title>Notes</title>
</head>
<body>
    <h2>Notes for {{ $contact->name }}</h2>
    <div>
        <a class="button" href="{{ route('notes.create', ['contact' => $contact->id]) }}" class="btn btn-primary">Add Note</a>
        <a class="button" href="{{route('contact.index')}}">Back</a>
    </div>
    <table border="1">
        <tr>
            <th>Note</th>
            <th>Actions</th>
        </tr>
        <tr>      
                @foreach ($notes as $note)
                <tr>
                <td>{{ $note->body }}</td>  
                <td class="actions">          
                            <a class="button" href="{{ route('notes.edit', ['contact' => $note->contact_id, 'note' => $note->id]) }}" class="btn btn-primary">Edit</a>
                            <form action="{{ route('notes.delete', ['contact' => $note->contact_id, 'note' => $note->id]) }}" method="post" style="display: inline-block;">
                                @csrf
                                @method('delete')
                                <input class="button" type="submit" value="Delete"/>
                            </form>
                </td>
                </tr>
            @endforeach
        </tr>
    </table>
</body>
</html>