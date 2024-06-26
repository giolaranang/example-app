<div>
    <ul>
        @foreach($contacts as $contact)
        <tr>
            <td>
                @if ($contact->profile_picture)
                    <img src="{{ asset('storage/' . $contact->profile_picture) }}" alt="Profile Picture">
                @else
                    NA
                @endif
            </td>
            <td>{{$contact->id}}</td>
            <td>{{$contact->name}}</td>
            <td>{{$contact->email}}</td>
            <td>{{$contact->number}}</td>
            <td>{{$contact->address}}</td>
            <td>
                <a href="{{route('notes.index',['contact' => $contact])}}">View</a>
            </td>
            <td>
                <a href="{{route('contact.edit',['contact' => $contact])}}">Edit</a>
            </td>
            <td>


                @if ($contact->trashed())
                <form action="{{ route('contacts.restore', ['contact' => $contact]) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <button type="submit" class="btn btn-primary btn-sm">Restore</button>
                </form>
            @else
            <form action="{{ route('contact.delete', ['contact' => $contact]) }}" method="POST" style="display: inline;">
                @csrf
                @method('DELETE')
                <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this contact?')">Delete</button>
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
    </ul>
</div>
