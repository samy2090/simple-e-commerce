<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class SiteContentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('site_contents')->truncate();
        $jsonPath = database_path('seeders/data/siteContent.json');

    // Read and decode the JSON file
    if (File::exists($jsonPath)) {
        $data = json_decode(File::get($jsonPath), true);

        // Process and insert data into the site_content table
        foreach ($data as $item) {
            DB::table('site_contents')->insert([
                'title' => json_encode($item['title']),  // Convert title to JSON string
                'description' => json_encode($item['description']),  // Convert description to JSON string
                'content' => json_encode($item['content']),  // Convert content to JSON string
                'type' => $item['type'],
                'identifier' => $item['identifier'],
                'slug' => $item['slug'],
                'visibility' => $item['visibility'],
                'icon' => $item['icon'],
                'link' => $item['link'],
                'link_text' => json_encode($item['link_text']),  // Convert link_text to JSON string
            ]);
        }

        $this->command->info('Site content seeded successfully!');
    } else {
        $this->command->error('JSON file not found at ' . $jsonPath);
    }
    }
}
