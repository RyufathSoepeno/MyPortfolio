<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up()
    {
        Schema::table('lke_sanggah', function (Blueprint $table) {

            // 1. Drop foreign key FIRST
            if (Schema::hasColumn('lke_sanggah', 'lke_parameter_id')) {
                $table->dropForeign('fk_sanggah_parameter');
                $table->dropColumn('lke_parameter_id');
            }

            // 2. Add the correct column
            if (!Schema::hasColumn('lke_sanggah', 'lke_test_tp_line_id')) {
                $table->unsignedBigInteger('lke_test_tp_line_id')->after('id');
            }
        });
    }

    public function down()
    {
        Schema::table('lke_sanggah', function (Blueprint $table) {
            // optional rollback
        });
    }
};

