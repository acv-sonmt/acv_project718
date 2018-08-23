<?php
namespace App\Http\Controllers;

use App\Customer2;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class Crud5Controller extends Controller
{
    public function index(Request $request)
    {
        $request->session()->put('search', $request->has('search') ? $request->get('search') : ($request->session()->has('search') ? $request->session()->get('search') : ''));
  
        $request->session()->put('field', $request->has('field') ? $request->get('field') : ($request->session()->has('field') ? $request->session()->get('field') : 'created_at'));
        
        $customers = new Customer2();

        $customers = $customers->where('name', 'like', '%' . $request->session()->get('search') . '%')->latest()->paginate(5);
        if ($request->ajax())
            return view('crud_5.index', compact('customers'));
        else
            return view('crud_5.ajax', compact('customers'));
    }

    public function create(Request $request)
    {
        if ($request->isMethod('get'))
            return view('crud_5.form');
        else {
            $rules = [
                'name' => 'required',
                'email' => 'required|email',
            ];
            $validator = Validator::make($request->all(), $rules);
            if ($validator->fails())
                return response()->json([
                    'fail' => true,
                    'errors' => $validator->errors()
                ]);
            $customer = new Customer2();
            $customer->name = $request->name;
            $customer->gender = $request->gender;
            $customer->email = $request->email;
            $customer->save();
            return response()->json([
                'fail' => false,
                'redirect_url' => url('laravel-crud-search-sort-ajax-modal-form')
            ]);
        }
    }

    public function delete($id)
    {
        Customer2::destroy($id);
        return redirect('/laravel-crud-search-sort-ajax-modal-form');
    }

    public function update(Request $request, $id)
    {
        if ($request->isMethod('get'))
            return view('crud_5.form', ['customer' => Customer2::find($id)]);
        else {
            $rules = [
                'name' => 'required',
                'email' => 'required|email',
            ];
            $validator = Validator::make($request->all(), $rules);
            if ($validator->fails())
                return response()->json([
                    'fail' => true,
                    'errors' => $validator->errors()
                ]);
            $customer = Customer2::find($id);
            $customer->name = $request->name;
            $customer->gender = $request->gender;
            $customer->email = $request->email;
            $customer->save();
            return response()->json([
                'fail' => false,
                'redirect_url' => url('laravel-crud-search-sort-ajax-modal-form')
            ]);
        }
    }
}