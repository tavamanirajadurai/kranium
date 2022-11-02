<?php
use App\Http\Controllers\roomcontroller;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('list');
    //return "Hellowold";
});

Route::get('/index','printcontroller@index');

Route::get('/patient_registration','roomcontroller@addPatient');
Route::post('/patient_registration','roomcontroller@addData');
Route::get('/patient_data','printcontroller@patientData');

 Route::get('/doctor_registration','roomcontroller@doctor');
 Route::post('/doctor_registration','roomcontroller@addDoc');
 Route::get('/doctor_data','printcontroller@doctorData');

 Route::get('/nurse_registration','roomcontroller@nurse');
 Route::post('/nurse_registration','roomcontroller@addnurse');
 Route::get('/nurse_data','printcontroller@nurseData');

 Route::get('/appointment','roomcontroller@appointment');
 Route::post('/appointment','roomcontroller@addappointment');
 Route::get('/appointment_data','printcontroller@appointmentData');

 Route::get('/bed_availabilty','printcontroller@bedData');
 Route::get('/assign_bed','printcontroller@assignbed');