<?php

use Illuminate\Database\Seeder;

class CustomersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker=Faker\Factory::create();
            foreach (range(1,50)  as $index) {
                \App\Customer::create([
                    'name'=>@$faker->name,
                    'age'=> $faker->randomNumber(2),
                    'phone'=>$faker->phoneNumber
                ]);
            }
    }
}
