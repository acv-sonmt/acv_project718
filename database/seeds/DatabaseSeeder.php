<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        //Model::unguard();
        //$this->call(TUsersTableSeeder::class);
        //$this->call(CustomersTableSeeder::class);
        //Model::requard();
        $this->call(Customer2TableSeeder::class);
    }
}
