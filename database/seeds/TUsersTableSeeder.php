<?php

use Illuminate\Database\Seeder;

class TUsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()

        //1) phương pháp dùng seeder
    {
        $faker = Faker\Factory::create();

        $limit = 10;

        for ($i = 0; $i < $limit; $i++) {

            //Co 2 cach de insert vao database

//            DB::table('tusers')->insert([
//                'name' => $faker->name,
//                'email' => $faker->unique()->email,
//                'contact_number' => $faker->phoneNumber,
//            ]);

           DB::insert('insert into tusers (name, email, contact_number) values(?,?,?)', [$faker->name,$faker->unique()->email, $faker->phoneNumber]);
        }

        //2) phương pháp dùng factory
        //tạo ra 12 bản ghi
        //factory(\App\TUser::class)->create();
    }
}
