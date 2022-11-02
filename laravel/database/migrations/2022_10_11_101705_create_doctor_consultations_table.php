<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDoctorConsultationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('doctor_consultations', function (Blueprint $table) {
            $table->increments('doc_id');
             $table->string('specialization');
             $table->number('Availability');
             $table->time('in_time');
             $table->time('out_time');
             $table->number('max_patients');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('doctor_consultations');
    }
}
