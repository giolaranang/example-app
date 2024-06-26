<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithFileUploads;
use Livewire\Attributes\Validate;

class UploadPhoto extends Component
{
   use WithFileUploads;
   #[Validate('image|max:1024')]
   public $photo;

   public function save()
   {
        $this->photo->store(path:'photos');
   }
}