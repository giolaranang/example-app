<!DOCTYPE html>
<html>
<head>
    <title>Contact List</title>
</head>
<body>
<div>
    <form wire:submit.prevent='login'>
        @if(session()->has('error'))
            <div>{{session('error')}}</div>
        @endif
        <div>
            <label for="username">Username</label>
            <input type="text" id="username" wire:model="username">
        </div>
        <div>
            <label for="password">Password</label>
            <input type="password" id="password" wire:model="password">
        </div>
        <button type="submit">Login</button>
    </form>
</div>
</body>
</html>

