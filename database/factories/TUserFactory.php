<?php

use Faker\Generator as Faker;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generatenew
| model instances for testing / seeding your application's database.
|
*/

$factory->define(App\TUser::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'email' => $faker->email,
        'contact_number' => $faker->phoneNumber,
    ];
});
