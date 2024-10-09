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
        Schema::create('posts', function (Blueprint $table) {
            $table->id();
            $table->text('image');
            $table->string('title');
            $table->text('description');
            $table->integer('category_id');
            $table->timestamps();

            // More datatypes
            // $table->date('date');
            // $table->dateTime('date_time');
            // $table->time('time');

            // $table->decimal('amount')->nullable();
            // $table->double('double');
            // $table->float('float');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('posts');
    }
};
