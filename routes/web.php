<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


//Route::get('/', function () {
//    return view('welcome');
//});

//bài 4 đưa dữ liệu ra view
Route::get('/', 'WelcomeController@index');

Route::get('/contact', 'WelcomeController@contact');
Route::get('/about', 'WelcomeController@about');

Route::get('/aboutme', 'PagesController@aboutme');

//bài 5 Template trong laravel5
Route::get('/lienhe', 'PagesController@lienhe');
Route::get('/thongtin', 'PagesController@thongtin');

//Bai 8 mo hinh MVC
Route::get('/articles', 'ArticlesController@index');

//bài 20 phân trang
Route::get('/ajax/customers_table', 'CustomerController@table');
Route::post('/ajax/update_customer_table','CustomerController@get_table');


//==================ADMIN====================
Route::group(['prefix'=>'admin'],function(){

	Route::group(['prefix'=>'customer'],function(){
		Route::get('list','CustomerController@index')->name("listCus");
		Route::get('loadmore','CustomerController@getPage');

		Route::get('add','CustomerController@getAdd');
		Route::post('add','CustomerController@postAdd');

		Route::get('edit/{id}','CustomerController@getEdit');
		Route::post('edit/{id}', 'CustomerController@postEdit');

		Route::get('delete','CustomerController@delete');

		//gen dataJSON
		Route::get('list-customer','CustomerController@getList');
		Route::get('put-data', 'CustomerController@putData')->name('putData');

		Route::get('search', 'CustomerController@getSearch')->name('search');



	});
});

//=================AJAX=+++++++++++++++++++
Route::group(['prefix' => 'laravel-crud-search-sort-ajax-modal-form'], function () {
    Route::get('/', 'Crud5Controller@index');
    Route::match(['get', 'post'], 'create', 'Crud5Controller@create');
    Route::match(['get', 'put'], 'update/{id}', 'Crud5Controller@update');
    Route::delete('delete/{id}', 'Crud5Controller@delete');

	Route::get('getlist', 'Crud5Controller@getList')->name('getCustomers');  
	Route::get('getPage', 'Crud5Controller@pageData')->name('pageData');

});



//=================Customers===========================

Route::get('manage-customer-ajax', 'CustomerAjaxController@manageCustomerAjax');
Route::resource('customer-ajax', 'CustomerAjaxController');
Route::get('paginate', 'CustomerAjaxController@index')->name("paginate");