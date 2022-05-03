<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTblRatingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_ratings', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('film_id');
            $table->float('rating');
            $table->string('kind_id',100);
            $table->unsignedBigInteger('total_rating');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_ratings');
    }
}
