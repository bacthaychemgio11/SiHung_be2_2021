<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class CourseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i = 0; $i < 100; $i++) {
            $year = random_int(1999, 2021);
            DB::table('courses')->insert([
                'course_name' => Str::random(10),
                'course_semester' => random_int(1, 2),
                'course_year' => $year . '-' . ($year + 1),
            ]);
        }
    }
}