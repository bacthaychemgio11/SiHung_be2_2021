<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i = 0; $i < 100; $i++) {
            DB::table('users')->insert([
                'user_name' => Str::random(10),
                'user_email' => Str::random(10) . "@gmail.com",
                'user_password' => Str::random(10),
                'type_id' => rand(1, 100),
                'group_id' => rand(1, 100),
            ]);
        }
    }
}
