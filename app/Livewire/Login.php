<?php

namespace App\Livewire;

use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class Login extends Component
{
	public $username;
	public $password;

    public function render()
    {
        return view('livewire.login');
    }

    public function login(){
	    	$credentials = [
	    	'username' => $this->username,
	    	'password' => $this->password,
	    ];

	    if(Auth::attempt($credentials)){
	    	return redirect()->intended('/dashboard');
	    }else{
	    	session()->flash('error','Invalid credentials');
	    }
    }
}
