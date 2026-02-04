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
        Schema::create('site_contents', function (Blueprint $table) {
            $table->id();
            $table->longText('title');
            $table->longText('description');
            $table->text('content')->nullable();
            $table->string('type', 255)->nullable();
            $table->string('identifier', 191)->nullable();
            $table->string('slug', 255)->nullable()->unique();
            $table->tinyInteger('visibility')->default(1);
            $table->string('icon', 191)->nullable();
            $table->string('link', 191)->nullable();
            $table->longText('link_text')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('site_contents');
    }
};
