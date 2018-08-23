<?php

namespace App\Http\Controllers;

use App\Customer;
use Illuminate\Http\Request;

class KhachhangController extends Controller
{
    public function get_home(Request $request){
        if($request->ajax() || 'NULL'){
            $customers = Customer::paginate(15);
            return view('pages.home',compact('customers'));
        }
    }
}
