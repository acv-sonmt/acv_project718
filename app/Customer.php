<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{

    /**
     * Define guarded columns
     *
     * @var array
     */
    //protected $guarded = array('id');
    public function latestPost()
    {
    	return $this->hasOne(Customer::class)->latest();
    }

    protected $table = 'customers';

    public $fillable = ['id','name','age', 'phone'];

}
