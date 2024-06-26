<?php
namespace App\Http\Controllers;
namespace App\Livewire;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\Contact;
use App\Models\Log;
use Livewire\Component;

class ContactsList extends Component
{
    public $contacts;
    public function mount()
    {
        $contacts = Contact::withTrashed()->get();
    }
    public function render()
    {
        return view('livewire.contacts-list');
    }
}
