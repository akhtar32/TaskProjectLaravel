<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/login', [UserController::class, 'login'])->name('login');
Route::post("/login/request", [UserController::class, "loginRequest"])->name('login_request');


Route::group(['middleware' => 'auth'], function () {
    Route::get('/index', [UserController::class, 'index'])->name('index');
    Route::get('/truck_item', [UserController::class, 'truck_item'])->name('truck_item');
    Route::post('/items/submit', [UserController::class, 'itemsSubmit'])->name('items.submit');
    Route::get('/logout', [UserController::class, 'logout'])->name('logout');
});

