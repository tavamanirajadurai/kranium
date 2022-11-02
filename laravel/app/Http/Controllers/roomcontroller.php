<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\patient_info;
use App\patient_area;
use App\patient_hospital_detail;
use App\doc_info;
use App\doc_area;
use App\doc_consult;
use App\nurse_info;
use App\appointment;
class roomcontroller extends Controller
{
 
	
	function addData(Request $req){
	   $patient_infos = new patient_info;
	   $patient_areas = new patient_area; 
	   $patient_hos = new patient_hospital_detail;
	   
	   $patient_infos->title = $req->input('TiTle');
	   $patient_infos->firstname = $req->input('name_first');
	   $patient_infos->lastname = $req->input('name_last');
	   $patient_infos->father = $req->input('name_2');
	   $patient_infos->mother = $req->input('name_3');
	   $patient_infos->age = $req->input('age');
	   $patient_infos->dob = $req->input('dob');
	   $patient_infos->gender = $req->input('sex');
	   $patient_infos->blood = $req->input('blood_group');
	   $patient_infos->civil = $req->input('civil_status');
	   $patient_infos->religion = $req->input('religion');
	   $patient_infos->phone = $req->input('phone');
	   $patient_infos->aadhar = $req->input('aadhar');
	   $patient_infos->is_foreign=0;

	   $patient_areas->street1 = $req->input('addr_str1');
	   $patient_areas->street2 = $req->input('addr_str2');
	   $patient_areas->area = $req->input('addr_city');
	   $patient_areas->district = $req->input('addr_city');
	   $patient_areas->state = $req->input('state');
	   $patient_areas->country = $req->input('country');
	   $patient_areas->nationality = $req->input('citizenship');

       $patient_hos->bill_type = $req->input('bill');
	   $patient_hos->auth_no = $req->input('auth');
	   $patient_hos->insurance_no = $req->input('ins');
	   $patient_hos->id_no = $req->input('id');
	   $patient_hos->policy_no = $req->input('policy');
	   $patient_hos->insurance_type = $req->input('insurance_type');

	   $patient_areas->save();
	   $patient_infos->save();
	   $patient_hos->save();
	   return "success";
}
function showhtml(){
	return view('add');
}
function addPatient(){
	return view('addPatient');
}
function doctor(){
	return view('doctor');
}
function nurse(){
	return view('nurse');
}
function addnurse(Request $req){
	$nurse_infos = new nurse_info;
	$nurse_infos->name=$req->input('name');
	$nurse_infos->room=$req->input('room');
	$nurse_infos->ward=$req->input('ward');
	$nurse_infos->age=$req->input('age');
	$nurse_infos->phno=$req->input('phno');
	$nurse_infos->doj=$req->input('doj');
	$nurse_infos->dob=$req->input('dob');
	$nurse_infos->area=$req->input('area');
	$nurse_infos->district=$req->input('district');
	$nurse_infos->country=$req->input('country');
	$nurse_infos->nationality=$req->input('nationality');
	$nurse_infos->street=$req->input('street');
	$nurse_infos->save();
return "success";
}

function appointment(){
	return view('appointment');
}

function addappointment(Request $req){
$app = new appointment;
$app->uhid=$req->input('uhid');
$app->doc_id=$req->input('doc_id');
$app->date=$req->input('date');
$app->time=$req->input('time');
$app->ward=$req->input('ward');
$app->save();
return "success";
}

function addDoc(Request $req){
	$doctor_infos = new doc_info;
	$doctor_areas = new doc_area;
	$doctor_consults = new doc_consult;

$doctor_infos->firstname = $req->input('firstname');
	$doctor_infos->lastname =$req->input('lastname');
	$doctor_infos->dob =$req->input('dob');
	$doctor_infos->gender =$req->input('gender');
	$doctor_infos->phno =$req->input('phno');
	$doctor_infos->qualification =$req->input('qualification');
	$doctor_infos->designation =$req->input('designation');
	$doctor_infos->age =$req->input('age');
	$doctor_infos->email =$req->input('email');
	$doctor_infos->doj =$req->input('doj');
	$doctor_infos->department =$req->input('department');

	$doctor_areas->streetno = $req->input('streetno');
	$doctor_areas->streetname = $req->input('streetname');
	$doctor_areas->country = $req->input('country');
	$doctor_areas->city = $req->input('city');
	$doctor_areas->nationality = $req->input('nationality');

   
	$doctor_consults->availability = $req->input('ahour');
	$doctor_consults->intime = $req->input('intime');
	$doctor_consults->outtime = $req->input('outtime');
	$doctor_consults->max_patients = $req->input('max');
	$doctor_consults->fee = $req->input('fee');
	


	$doctor_infos->save();
	$doctor_areas->save();
	$doctor_consults->save();
	return "Success"; 
}

}
