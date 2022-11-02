<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class patient_info extends Model
{
    protected $table = 'patient_infos';
	public $timestamps = false;
    
   
   protected $fillable = [
    'uhid',	'title',	'firstname',	'lastname'	,'father'	,'mother',	'gender'	,'dob',	'age'	,'aadhar'	,'phone'	,'is_foreign'	,'blood',	'civil'	,'religion',
   ];
}
