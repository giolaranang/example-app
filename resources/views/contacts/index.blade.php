<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="{{ asset('css/custom.css') }}" rel="stylesheet">
    <title>Document</title>
</head>
<body>
    <h1>Contacts</h1>
    <div>
        @if(session()->has('success'))
            <div>
                {{session('success')}}
            </div>
        @endif
    </div>
    <div>
        <div>
            <a class="button" href="{{route('contact.create')}}">Create Contact</a>
            <a class="button" href="{{route('dashboard')}}">Back</a>
        </div>
        <table border="1">
            <tr>
                <th>Avatar</th>
                <th>Name</th>
                <th>Email</th>
                <th>Contact Number</th>
                <th>Address</th>
                <th>Actions</th>
                <th>Status</th>
            </tr>
            @foreach($contacts as $contact)
                <tr>
                    <td class="avatar">
                        @if ($contact->profile_picture)
                            <img src="{{ asset('storage/' . $contact->profile_picture) }}" alt="Profile Picture">
                        @else
                            NA
                        @endif
                    </td>
                    <td>{{$contact->name}}</td>
                    <td>{{$contact->email}}</td>
                    <td>{{$contact->number}}</td>
                    <td>{{$contact->address}}</td>
                    <td class="actions">
                        <a class="button" href="{{route('notes.index',['contact' => $contact])}}">View Notes</a>
                    </td>
                    <td class="actions">
                        <a class="button" href="{{route('contact.edit',['contact' => $contact])}}">Edit</a>
                    </td>
                    <td class="actions">
                        @if ($contact->trashed())
                        <form action="{{ route('contacts.restore', ['contact' => $contact]) }}" method="POST">
                            @csrf
                            @method('PUT')
                            <button type="submit"  class="button" style="border: 2px solid white;">Restore</button>
                        </form>
                    @else
                    <form action="{{ route('contact.delete', ['contact' => $contact]) }}" method="POST" style="display: inline;">
                        @csrf
                        @method('DELETE')
                        <button class="button" type="submit" style="border: 2px solid white;" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this contact?')">Delete</button>
                    </form>
                    @endif
                    </td>
                    <td>
                        @if ($contact->trashed())
                            <span class="text-danger">Deleted</span>
                        @else
                            Active
                        @endif
                    </td>
                </tr>
            @endforeach
        </table>
    </div>
</body>
</html>