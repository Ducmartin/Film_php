<?php

namespace App\Http\Controllers;

use App\tbl_country;
use App\tbl_film_odd;
use App\tbl_film_serie;
use App\tbl_kind;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
   
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
         $total_film=count(tbl_film_odd::all())+count(tbl_film_serie::all());
         $total_kind_films=tbl_kind::all();
         $total_film_countries=tbl_country::all();
         $total_view=tbl_film_odd::sum('view')+ tbl_film_serie::sum('view');

        return view('admin.home',compact('total_film','total_kind_films','total_film_countries','total_view'));
        // return Auth::user();
    }
   
}
