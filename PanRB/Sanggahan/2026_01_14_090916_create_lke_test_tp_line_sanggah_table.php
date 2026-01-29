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
        Schema::create('lke_test_tp_line_sanggah', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('lke_test_tp_line_id');
            $table->unsignedBigInteger('user_id');
            $table->string('file');
            $table->text('uraian')->nullable();
            $table->enum('status_sanggah', [
                'belum ada sanggah',
                'dalam proses',
                'terima',
                'tolak'
            ])->default('dalam proses');
            $table->timestamps();
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('lke_test_tp_line_sanggah');
    }
};
