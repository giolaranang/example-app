<?php

namespace App\Livewire;

use Livewire\Component;

class ContactDetails extends Component
{
    public $contact;

    public function mount($id)
    {
        $this->contact = Contact::findOrFail($id);
    }

    public function render()
    {
        return view('livewire.contact-details', [
            'contact' => $this->contact,
        ]);
    }
}
