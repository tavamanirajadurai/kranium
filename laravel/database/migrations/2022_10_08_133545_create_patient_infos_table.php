<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePatientInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patient_infos', function (Blueprint $table) {
            $table->increments('uhid');
            $table->string('title');
            $table->string('firstname');
            $table->string('lastname');
            $table->string('father');
            $table->string('mother');
            $table->string('gender');
            $table->date('dob');
            $table->integer('age');
            $table->integer('aadhar');
            $table->integer('phone');
            $table->integer('is_foreign');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('patient_infos');
    }
}
