<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class doc_info extends Model
{
    protected $table = 'doc_infos';
	public $timestamps = false;
    protected $fillable = [
        'doc_id',		'firstname',	'lastname'	,	'gender'	,'dob',	'age'		,'phone'	,'qualification','designation','email','doj','department',
       ];
	
}
