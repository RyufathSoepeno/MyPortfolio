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
       // database/migrations/xxxx_add_sanggah_status_to_lke_test_tp_line.php
        Schema::table('lke_test_tp_line', function (Blueprint $table) {
            $table->enum('sanggah_status', ['dalam proses', 'terima', 'tolak'])
                ->nullable()
                ->after('rekomendasi');
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('lke_test_tp_line', function (Blueprint $table) {
            //
        });
    }
};
