<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class ClassUserSeeder  extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i = 0; $i < 100; $i++) {
            $statusArr = [true, false];
            DB::table('classes_users')->insert([
                'class_id' => random_int(1, 100),
                'user_id' => random_int(1, 100),

                'status' => $statusArr[array_rand($statusArr)],
            ]);
        }
    }
}