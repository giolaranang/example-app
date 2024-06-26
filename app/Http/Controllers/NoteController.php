<?php

namespace App\Http\Controllers;
use App\Models\Contact;
use App\Models\Note;
use Illuminate\Http\Request;

class NoteController extends Controller
{
    public function index(Contact $contact)
    {
        $notes = $contact->notes;
        return view('notes.index', compact('notes','contact'));
    }

    public function create(Contact $contact)
    {
        return view('notes.create', compact('contact'));
    }

    public function store(Request $request, Contact $contact)
    {
        $request->validate([
            'body' => 'required|string',
        ]);

        $contact->notes()->create($request->only(['body']));

        return redirect()->route('notes.index', ['contact' => $contact->id])->with('success', 'Note added successfully.');
    }

    public function edit(Contact $contact, Note $note)
    {
        return view('notes.edit', compact('contact', 'note'));
    }

    public function update(Request $request, Contact $contact, Note $note)
    {
        $request->validate([
            'body' => 'required|string'
        ]);

        $note->update($request->only(['body']));
        return redirect()->route('notes.index', ['contact' => $contact->id])->with('success', 'Note added successfully.');
    }

    public function delete(Contact $contact, Note $note)
    {
        $note->delete($note);
        return redirect(route('notes.index', ['contact' => $contact->id]))->with('success','Contact deleted successfuly');
    }
}
