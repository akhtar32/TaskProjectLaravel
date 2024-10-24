<?php

namespace App\Http\Controllers;

use App\Models\Item;
use App\Models\User;
use App\Models\UserItem;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    function index()
    {
        return view('index');
    }

    function truck_item()
    {
        $data = UserItem::where("user_id", Auth::user()->id)->with('item')->get();
        $items = Item::get();
        return view('truck_item', compact('data', 'items'));
    }

    function itemsSubmit(Request $request)
    {

        UserItem::create(["user_id"=>Auth::user()->id,"item_id"=>$request->item_id]);

        return redirect()->route('truck_item');
    }

    function login()
    {
        return view('login');
    }

    public function loginRequest(Request $request)
    {

        $user = User::where('email', $request->email)->first();

        if ($user) {
            Auth::login($user);
            return redirect()->route('index');
        }

        // If the credentials are invalid, redirect back with an error
        return redirect()->back()->with('error', 'Invalid credentials')->withInput();
    }

    function logout(Request $request)
    {
        Auth::logout();
        return redirect()->route('login');
    }
}
