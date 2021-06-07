<?php

namespace Database\Seeders;

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
        // \App\Models\User::factory(10)->create();
        $this->call([
            CompanySeeder::class,
            TrainerSeeder::class,
            CategorySeeder::class,
            CategoryCompanySeeder::class,
            CourseSeeder::class,
            ClassSeeder::class,
            ClassUserSeeder::class,
            DiaryContentSeeder::class,
            DiarySeeder::class,
            GroupPermissionSeeder::class,
            GroupSeeder::class,
            PermissionSeeder::class,
            TrainerSeeder::class,
            TypeSeeder::class,
            UserPermissionSeeder::class,
            UserSeeder::class,
            WeekSeeder::class
        ]);
    }
}