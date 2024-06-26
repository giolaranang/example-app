<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContactController;
use Spatie\Activitylog\Models\LogsActivity;
use App\Http\Controllers\NoteController;



Route::get('/dashboard', function () {
    return Activity::all();
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/contacts',[ContactController::class,'index'])->name('contact.index');
    Route::get('/contact/logs',[ContactController::class,'logs'])->name('contact.logs');
    Route::get('/contacts/create',[ContactController::class,'create'])->name('contact.create');

    Route::post('/contacts',[ContactController::class,'store'])->name('contact.store');
    Route::get('/contacts/{contact}/edit',[ContactController::class,'edit'])->name('contact.edit');

    Route::put('/contacts/{contact}/update',[ContactController::class,'update'])->name('contact.update');
    Route::delete('/contacts/{contact}/delete',[ContactController::class,'delete'])->name('contact.delete');

    Route::put('contacts/{contact}/restore', [ContactController::class, 'restore'])->name('contacts.restore');

    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    
    //Route::resource('contacts.notes', NoteController::class)->shallow();
    Route::get('/notes/{contact}/index',[NoteController::class,'index'])->name('notes.index');
    Route::get('/notes/{contact}/create',[NoteController::class,'create'])->name('notes.create');
    Route::post('/notes/{contact}/store',[NoteController::class,'store'])->name('notes.store');
    Route::get('/notes/{contact}/{note}/edit',[NoteController::class,'edit'])->name('notes.edit');
    Route::delete('/notes/{contact}/{note}/delete',[NoteController::class,'delete'])->name('notes.delete');
    Route::put('/notes/{contact}/{note}/update',[NoteController::class,'update'])->name('notes.update');
   
    //Route::get('/contacts/{id}', ContactDetails::class)->name('contacts.show');

    Route::get('/dynamic-page/{page}',[DynamicPage::class,'page'])->name('dynamic.page');

});

require __DIR__.'/auth.php';

Route::get('/', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');


