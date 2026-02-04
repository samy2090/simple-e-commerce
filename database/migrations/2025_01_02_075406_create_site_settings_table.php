<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('site_settings', function (Blueprint $table) {
            $table->id();
            $table->string('title'); 
            $table->string('facebookLink')->nullable(); 
            $table->string('instaLink')->nullable(); 
            $table->string('xLink')->nullable(); 
            $table->string('mail')->nullable(); 
            $table->string('mobileAppLink')->nullable(); 
            $table->string('description')->nullable(); 
            $table->string('logo_path')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('site_settings');
    }
};
