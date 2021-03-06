<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class authQu
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        $session = session()->get("auth_session");
        if ($session == null) {
            return redirect('login');
        }
        return $next($request);
    }
}
