<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePatientHospitalDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patient_hospital_details', function (Blueprint $table) {
            $table->increments('uhid');
            $table->date('reg_date');
            $table->time('reg_time');
            $table->string('admission_class');
            $table->string('units');
            $table->string('dept');
            $table->integer('num_of_doctor');
            $table->string('ref_by');
            $table->string('bill_type');
            $table->integer('auth_no');
            $table->string('insurance_no');
            $table->integer('id_no');
            $table->integer('policy_no');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('patient_hospital_details');
    }
}
