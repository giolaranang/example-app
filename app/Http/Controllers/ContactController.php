<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\Contact;
use App\Models\Log;

class ContactController extends Controller
{
    public function index(){
        $contacts = Contact::withTrashed()->get();
        return view('contacts.index', ['contacts'=>$contacts]);
    }

    public function logs(){
        $logs = Log::all();
        return view('contacts.logs',['logs'=>$logs]);
    }

    public function create(){
        return view('contacts.create');
    }

    public function store(Request $request){
        $data = $request->validate([
            'name' => 'required',
            'email' => 'required',
            'number' => 'required|numeric',
            'address' =>'required'
        ]);

        $newContact = Contact::create($data);

        return redirect(route('contact.index'));
    }

    public function edit(Contact $contact){
        return view('contacts.edit',['contact' => $contact]);
    }

    public function update(Contact $contact, Request $request){
        $data = $request->validate([
            'name' => 'required',
            'email' => 'required',
            'number' => 'required|numeric',
            'address' =>'required',
            'profile_picture' => 'image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        if ($request->hasFile('profile_picture')) {

            // Delete old profile picture if exists
            if ($contact->profile_picture) {
                Storage::disk('public')->delete($contact->profile_picture);
            }
            
            // Upload
            $imagePath = $request->file('profile_picture')->store('profile_pictures', 'public');

            // Store
            $contact->profile_picture = $imagePath;
            $contact->save();
        }

        $contact->update($data);

        return redirect(route('contact.index'))->with('success','Contact updated successfuly');
    }

    public function delete($contact){
        $contact = Contact::findOrFail($contact);
        $contact->delete();
        return redirect(route('contact.index'))->with('success','Contact deleted successfuly');
    }

    public function restore($contact)
    {
        $contact = Contact::withTrashed()->findOrFail($contact);
        $contact->restore();

        return redirect()->route('contact.index')
                         ->with('success', 'Contact restored successfully.');
    }

    public function page($page)
    {
        // Example logic to fetch data based on $page parameter
        $content = "This is the content for page: $page";

        // Return a view with the fetched content
        return view('livewire.dynamic-page', ['content' => $content]);
    }
}
