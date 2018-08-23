<?php

namespace App\Http\Controllers;

use App\Customer;
use Illuminate\Http\Request;

class CustomerAjaxController extends Controller
{
        public function manageCustomerAjax()

    {

        return view('manage-customer-ajax');

    }


    /**

     * Display a listing of the resource.

     *

     * @return \Illuminate\Http\Response

     */

    public function index(Request $request)

    {
        $key="";
        if(isset($request->key)){
            $key=$request->key;
            $customers=Customer::where('name', 'like','%'.$key.'%')->paginate(5);
        }else{

            $customers = Customer::latest()->paginate(5);
        }
        return response()->json([
                'data'=>$customers,
                'key'=>$key
            ]);
    }


    /**

     * Store a newly created resource in storage.

     *

     * @param  \Illuminate\Http\Request  $request

     * @return \Illuminate\Http\Response

     */

    public function store(Request $request)

    {

        $create = Customer::create($request->all());

        return response()->json($create);

    }


    /**

     * Update the specified resource in storage.

     *

     * @param  \Illuminate\Http\Request  $request

     * @param  int  $id

     * @return \Illuminate\Http\Response

     */

    public function update(Request $request, $id)

    {

        $edit = Customer::find($id)->update($request->all());

        return response()->json($edit);

    }


    /**

     * Remove the specified resource from storage.

     *

     * @param  int  $id

     * @return \Illuminate\Http\Response

     */

    public function destroy($id)

    {

        Customer::find($id)->delete();

        return response()->json(['done']);

    }
}
