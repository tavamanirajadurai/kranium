<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePatientForeignsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patient_foreigns', function (Blueprint $table) {
            $table->increments('uhid');
            $table->integer('passport_no');
            $table->date('visa_issue_date');
            $table->date('visa_validity_date');
            $table->string('status');
            $table->string('religion');
            $table->string('care_service');
            $table->string('reference_info');
            $table->string('other_hospital');
            $table->string('admitted_by');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('patient_foreigns');
    }
}
