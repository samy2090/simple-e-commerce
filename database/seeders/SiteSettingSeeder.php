<?php

namespace Database\Seeders;

use App\Models\SiteSettings;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class SiteSettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        DB::table('site_settings')->truncate(); 
            SiteSettings::create([
                'title' => 'Example Title 1',
                'facebookLink' => 'https://facebook.com/example1',
                'instaLink' => 'https://instagram.com/example1',
                'xLink' => 'https://x.com/example1',
                'mail' => 'example1@example.com',
                'mobileAppLink' => 'https://appstore.com/example1',
                'description' => 'This is a description for example 1.',
                'logo_path' => 'logos/example1.png', 
            ]);
            
    }
}
