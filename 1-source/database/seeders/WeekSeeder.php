<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class WeekSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i = 0; $i < 100; $i++) {
            $year = mt_rand(2001, 2021);

            $month = mt_rand(1, 10);
            $nextMonth = $month + 2;

            $day = mt_rand(1, 28);

            $randomDate = $year . "-" . $month . "-" . $day;
            $randomNextDate = $year . "-" . $nextMonth . "-" . $day;

            DB::table('weeks')->insert([
                'week_weekdays' => random_int(2, 8),
                'status_check' => random_int(0, 1),
                'create_at' => $randomDate,
                'end_at' => $randomNextDate,
                'diary_id' => random_int(1, 100)
            ]);
        }
    }
}