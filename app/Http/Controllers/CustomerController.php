<?php

namespace App\Http\Controllers;

use App\Customer;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    
public function index(Request $request)
{
    //return view('')

    // if ($request->ajax() || 'NULL') {
    //     $customers = Customer::latest()->paginate(10);
    //     return view('admin.customer.list', ["customers" => $customers]);
    // }

}

public function getList(Request $request)
{
    $customers = Customer::latest()->paginate(10);
    return view('admin.customer.list', ["customers" => $customers]);

}

public function putData(Request $request)
{
    if ($request->ajax() || 'NULL') {
        $customers = Customer::latest()->paginate(10);
        return response()->Json([
            'data' => $customers]);
    }
}

public function getSearch(Request $request)
{   
 if(isset($request->key)){
    $key = "";
    $customers = Customer::where('name', 'like', '%'.$request->search.'%')->get();
    return response()->Json([
        'data'=>$customers,
        'key'   => $key
    ])->paginate(10);
}    
}

public function getAdd(Request $request)
{
    return view('admin.customer.add');
}

public function postAdd(Request $request)
{
    $customer        = new Customer;
    $customer->name  = $request->name;
    $customer->age   = $request->age;
    $customer->phone = $request->phone;

    $customer->save();

    return redirect('admin/customer/add')->with('success', 'Thêm thành công !');
}

public function getEdit($id)
{
    $customer = Customer::find($id);
    return view('admin.customer.edit', ['customer' => $customer]);

}

public function postEdit(Request $request, $id)
{
    $customer        = Customer::find($id);
    $customer->name  = $request->name;
    $customer->age   = $request->age;
    $customer->phone = $request->phone;

    $customer->save();

    return redirect('admin/customer/edit/' . $id)->with('success', 'Sửa thành công !');

}

public function delete(Request $request)
{
    $id = $request->id;
    Customer::where("id", $id)->delete();
    return redirect('admin/customer/list-customer')->with('success', 'Đã xóa !');
}

    //phân trang loadmore

        // public function getPage(){

        // $limit=10;

        // $page = 5;
        // settype($page, 'int');

        // $start=($page-1)*$limit;

        // $customers= customer::all();
        // // $data=Customer::with('latestPost')->get()->sortByDesc('latestPost.created_at');
        // return view('admin.customer.loadmore',['customers'=>$customers]);
        // }

public function table()
{
            // $customers = DB::table('customers')->paginate(25);
            // return view("table", compact("customers"));
    return view("admin.customer.table");

}

    // New function for handling AJAX:
public function get_table(Request $request)
{
    $currentPage = $request->page_num;
            // Set the paginator to the current page
            // Paginator::currentPageResolver call which sets the current page to the variable $page.
    paginator::currentPageResolver(function () use ($currentPage) {
        return $currentPage;
    });
    $customers = DB::table('customers')->paginate(15);
    return view("admin.customer.customers_table_only", compact("customers"));
}

}
