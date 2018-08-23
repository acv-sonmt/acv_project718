<?php

use Illuminate\Database\Seeder;

class Customer2TableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        	 factory(App\Customer2::class,50)->create();
    }
}
