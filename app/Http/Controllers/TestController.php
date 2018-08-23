<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Customer2;

class TestController extends Controller
{
    public function index(Request $request)
    {		getAjax();
            return view('test.index');
    }

    public function getAjax(){
         $customers = Customer2::latest()->paginate(10);
         //$data = json_encode($customers);
         return view('test.list',["cusomers"=>$customers]);

    }
}