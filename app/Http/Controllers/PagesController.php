<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function aboutme()
    {

        $name = 'My name is Sơn';
        $age = '26 tuổi';

        $data = [];
        $data['name'] = $name;
        $data['age'] = $age;
        //

        //1) đưa dữ liệu đơn ra ngoài view với phương thức with
        //return view("pages.aboutme")->with('name',$name);

        //2) gửi nhiều dữ liệu ra view dùng mảng trong with
        //return view("pages.aboutme")->with(['name'=>$name, 'age'=>$age]);

        //3) gửi dữ liệu ra view không sử dụng with cần khai báo mảng trước
        return view("pages.aboutme",$data);

    }

    public function thongtin()
    {
        return view('pages.thongtin');

    }

    public function lienhe()
    {
        return view('pages.lienhe');
    }

}
