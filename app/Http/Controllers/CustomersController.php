<?php

namespace App\Http\Controllers;

use App\Customer;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class CustomersController extends Controller
{
    public function index(Request $request){

            $customers = Customer::paginate(10);
            return View::make('customers.customers',['customers.customers' => $customers])->render();

}

}
