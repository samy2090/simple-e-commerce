<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class ImagestSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $images = [];

        // Loop 10 times to generate image data
        for ($i = 1; $i <= 2; $i++) {
            $images[] = [
                'filename' => 'sample-image.png',  // e.g., sample-image1.png, sample-image2.png, ...
                'content_id' => $i,  // Random content_id between 1 and 10 (assuming you have content with IDs from 1 to 10)
                'path' => 'attachments\\images\\sample-image.png',
            ];
        }

        // Insert the generated image data into the images table
        DB::table('images')->insert($images);

        $this->command->info('10 images seeded successfully!');
    }
}
