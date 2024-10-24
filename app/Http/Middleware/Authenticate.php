<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     */
    protected function redirectTo(Request $request): ?string
    {
        // Debugging: Check the currently authenticated user


        // Check if the user is not logged in
        if (!Auth::check()) {
            // Redirect to the login page if not logged in
            return route('login');
        }

        // If the user is logged in, return the desired route
        return $request->expectsJson() ? null : route('index');
    }

}
