<?php

namespace App\Livewire;

use Livewire\Component;

class DynamicPage extends Component
{
    public $page;

    public function mount($page)
    {
        $this -> page = $page;
    }

    public function render()
    {
        return view('livewire.dynamic-page');
    }
}
