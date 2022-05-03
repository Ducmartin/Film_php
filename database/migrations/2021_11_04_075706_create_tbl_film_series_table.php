<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTblFilmSeriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_film_series', function (Blueprint $table) {
            $table->id();
            $table->string('name',200);
            $table->string('slug',200);
            $table->text('intro');
            $table->text('showtime');
            $table->float('rate');
            $table->integer('total_rating');
            $table->unsignedBigInteger('view')->nullable();
            $table->integer('update_episode')->nullable();
            $table->integer('end_episode')->nullable();
            $table->string('photo',2000);
            $table->string('bg_photo',2000)->nullable();
            $table->string('kind_id',3000);
            $table->unsignedBigInteger('country_id');
            $table->foreign('country_id')->references('id')->on('tbl_countries')->onDelete('cascade');
            $table->unsignedBigInteger('translate_id');
            $table->foreign('translate_id')->references('id')->on('tbl_translates')->onDelete('cascade');
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
        Schema::dropIfExists('tbl_film_series');
    }
}
