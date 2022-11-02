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
use App\ward_5;
use App\ward_7;
use App\ward_8;
use App\ward_9;
use App\ward_10;
use App\ward_12;
use App\ward_15;
use App\ward_17;
use App\ward_20;
use App\ward_25;
use App\ward_30;
class printcontroller extends Controller
{
	function index(){
		return view('index');
	}
    function patientData()
	{
		$data1 = patient_info:: all();
        return view('printpatient',['data1s'=>$data1]);
	}
    function doctorData()
	{
		$data1 = doc_info:: all();
        return view('printdoc',['data1s'=>$data1]);
	}
	function assignbed(){
		return view('assignbed');
	}
    function appointmentData()
	{
		$data1 = appointment:: all();
        return view('printappointment',['data1s'=>$data1]);
	}
    function nurseData()
	{
		$data1 = nurse_info:: all();
        return view('printnurse',['data1s'=>$data1]);
	}
    function bedData()
	{
		$data1 = ward_5:: all();
        $data2 = ward_7:: all();
		$data3 = ward_8:: all();
		$data4 = ward_9:: all();
		$data5 = ward_10:: all();
		$data6 = ward_12:: all();
		$data7 = ward_15:: all();
		$data8 = ward_17:: all();
		$data9 = ward_20:: all();
		$data10 = ward_25:: all();
		$data11 = ward_30:: all();

        return view('bed',['data1s'=>$data1, 'data2s'=>$data2 ,'data3s'=>$data3,'data4s'=>$data4,'data5s'=>$data5,'data6s'=>$data6,'data7s'=>$data7,'data8s'=>$data8,'data9s'=>$data9,'data10s'=>$data10,'data11s'=>$data11]);
	}

}