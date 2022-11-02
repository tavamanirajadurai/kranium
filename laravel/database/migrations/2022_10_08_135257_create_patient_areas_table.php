<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePatientAreasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patient_areas', function (Blueprint $table) {
            $table->increments('uhid');
            $table->string('street1');
            $table->string('street2');
            $table->string('area');
            $table->string('district');
            $table->string('state');
            $table->string('country');
            $table->string('nationality');
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('patient_areas');
    }
}
