<html>

<body>
   
    <h1>patient registration</h1>

    <form method="post" action="patient_registration" >
    {{ csrf_field() }}
        <table cellspacing="0" cellpadding="0">
            <tbody>
               

                


                <tr>
                    <td class="reg_item">Title
                        <font color="#ff0000"><b>*</b></font>
                    </td>
                    <td class="reg_input" colspan=""><select name="TiTle" onchange="combochange(TiTle)">
                    <option selected="selected" value=""></option>
                    <option value="Mr.">Mr.</option>
                    <option value="Mrs.">Mrs.</option>
                    <option value="Ms.">Ms.</option>
                    <option value="Dr.">Dr.</option>
                    <option value="Master.">Master.</option>
                    <option value="Baby.">Baby.</option>
                    <option value="Baby Boy Of.">Baby Boy Of.</option>
                    <option value="Baby Girl Of.">Baby Girl Of.</option>
                    <option value="Lt.col.">Lt.col.</option>
                    <option value="Col.">Col.</option>
                    <option value="Major.">Major.</option>
                    <option value="Brother.">Brother.</option>
                    <option value="Sr.">Sr.</option>
                    <option value="Prof.">Prof.</option>
                    <option value="Brig.">Brig.</option>
                    <option value="Highness.">Highness.</option>
                    <option value="Fr.">Fr.</option>
                    <option value="Capt.">Capt.</option>
                    <option value="Sq.Ldr.">Sq.Ldr.</option>
                    <option value="Sheik.">Sheik.</option>
                    <option value="Justice.">Justice.</option>
                    <option value="Rev.">Rev.</option>
                    <option value="COL (DR).">COL (DR).</option>
                    <option value="Bishop.">Bishop.</option>
                    <option value="CAPT.(DR).">CAPT.(DR).</option>
                    <option value="Pastor.">Pastor.</option>
                    <option value="CDR.">CDR.</option>
                    <option value="WG. CDR.">WG. CDR.</option>
                    <option value="SUB.">SUB.</option>
                    <option value="President.">President.</option>
                    <option value="Lieutenant.">Lieutenant.</option>
                    <option value="Aircmoe.">Aircmoe.</option>
                    <option value="Hon.">Hon.</option>
                    <option value="Commodore.">Commodore.</option>

			    </select></td>
                </tr>

                <tr>
                    <td class="reg_item">First name
                        <font color="#ff0000"><b>*</b></font>
                    </td>
                    <td class="reg_input" colspan=""><input name="name_first" type="text" size="35" value=""></td>
                </tr>

                <tr>
                    <td class="reg_item">Last name</td>
                    <td class="reg_input" colspan=""><input name="name_last" type="text" size="35" value=""></td>
                </tr>
                <tr>
                    <td class="reg_item">Father/Husband Name
                        <font color="#ff0000"><b>*</b></font>
                    </td>
                    <td class="reg_input" colspan="1"><input name="name_2" type="text" size="35" value=""></td>
                </tr>
               
                <tr>
                    <td class="reg_item">Mother / Spouse Name</td>
                    <td class="reg_input" colspan="1"><input name="name_3" type="text" size="35" value=""></td>
                </tr>
             
                
                <tr>
                    <td class="reg_item">
                        Age:
                        
                    </td>
                    <td class="reg_input">
                        <input name="age" type="number" size="3" > 
                    </td>

                </tr>

                <tr>
                    <td class="reg_item">
                        Date of birth
                    </td>
                    <td class="reg_input">
                        <input name="dob" type="date" size="15" >
                        <font size="1">[dd/mm/yyyy]&nbsp;
                        </font>
                    </td>
                </tr>
                <tr>

                    <td class="reg_item">
                        Gender:
                        <font color="#ff0000">*</font>
                    </td>
                    <td class="reg_input">
                        <input onfocus="imgchange(this.form)" name="sex" type="radio" value="m"> Male&nbsp;&nbsp; <input name="sex" type="radio" value="f"> Female <input name="sex" type="radio" value="t"> Transgender
                    </td>
                </tr>
                <tr>
                    <td class="reg_item">Religion</td>
                    <td class="reg_input" colspan="2"><select name="religion" onchange="combochange(ReliGion)">
                    <option selected="selected" value=""></option>
                    <option value="Hindu">Hindu</option>
                    <option value="Muslim">Muslim</option>
                    <option value="Christian">Christian</option>
                    <option value="Jainism">Jainism</option>
                    <option value="Buddhism">Buddhism</option>
                    <option value="Sikhism">Sikhism</option>
			    </select></td>
                </tr>
                <tr>
                    <td class="reg_item">
                        Blood group
                    </td>
                    <td colspan="2" class="reg_input">
                        <!--
				<input name="blood_group" type="radio" value="A" >A  &nbsp;&nbsp; 
				<input name="blood_group" type="radio" value="B" >B &nbsp;&nbsp; 
				<input name="blood_group" type="radio" value="AB" >AB  &nbsp;&nbsp; 
				<input name="blood_group" type="radio" value="O" >O &nbsp;&nbsp; RH :&nbsp; 
				<input name="rhfactor" type="radio" value="+ve" >+ve&nbsp;
				<input name="rhfactor" type="radio" value="-ve" >-ve  -->

                        <input name="blood_group" type="radio" value="A">A &nbsp;

                        <input name="blood_group" type="radio" value="B">B &nbsp;

                        <input name="blood_group" type="radio" value="AB">AB &nbsp;

                        <input name="blood_group" type="radio" value="O">O &nbsp;

                        <input name="blood_group" type="radio" value="new" onclick="othergroup('Other')">Other &nbsp;
                        <input type="text" name="group_other" value="" size="1" disabled=""> &nbsp; RH :&nbsp;
                        <input name="rhfactor" type="radio" value="+ve">+ve&nbsp;
                        <input name="rhfactor" type="radio" value="-ve">-ve </td>
                </tr>

                <tr>
                    <td class="reg_item">
                        Civil status
                    </td>
                    <td colspan="2" class="reg_input">
                        <input name="civil_status" type="radio" value="single">Single &nbsp;&nbsp;
                        <input name="civil_status" type="radio" value="married">Married &nbsp;&nbsp;
                        <input name="civil_status" type="radio" value="divorced">Divorced &nbsp;&nbsp;
                        <input name="civil_status" type="radio" value="widowed">Widowed &nbsp;&nbsp;

                    </td>
                </tr>
                <tr>
                    <td class="reg_item">
                        Local Address:
                    </td>
                    <td class="reg_input" colspan="2"> <input name="addr_is_valid" type="radio" value="Present">Present <input name="addr_is_valid" type="radio" value="Permanent">Permanent <input name="addr_is_valid" type="radio" value="Employee">Employee
                    </td>
                </tr>
                <tr>
                    <td class="reg_item">
                        Street1:
                        <font color="#ff0000">*</font>
                    </td>
                    <td class="reg_input" colspan="2">
                        <input name="addr_str1" type="text" size="35" value="">
                    </td>
                </tr>
                <tr>
                    <td class="reg_item">
                        <font color="#ff0000"></font> Street2:
                    </td>
                    <td class="reg_input" colspan="2">
                        <input name="addr_str2" type="text" size="35" value="">
                    </td>
                </tr>
                <tr>
                    <td class="reg_item">
                        Area
                    </td>
                    <td class="reg_input" colspan="2">
                        <div id="div_areatown_select"><select name="addr_area" id="areatown_select" onchange="select_pinc(this.value);"><option value="-1">---Select Area---</option></select></div>
                    </td>
                </tr>
                <tr>
                    <td class="reg_item">
                        Town/City:
                        <font color="red">* </font>
                    </td>
                    <td class="reg_input">
                        <select name="addr_city" id="city_select" onchange="state(event);"><option>Select Town/City</option><option value="23865">Ahmedabad</option><option value="9012">Alappuzha</option><option value="23834">Ampang</option><option value="23800">Andaman</option><option value="23798">Angeles</option><option value="1">ARIYALUR</option><option value="14093">Bagalkot</option><option value="9011">Bangalore</option><option value="14701">Bangalore Rural</option><option value="14890">Belgaum</option><option value="15608">Bellary</option><option value="15999">Bidar</option><option value="16302">Bijapur</option><option value="16711">Chamrajnagar</option><option value="219">CHENNAI</option><option value="16911">Chickmagalur</option><option value="17215">Chikkaballapur</option><option value="17317">Chitradurga</option><option value="23841">Chittoor</option><option value="378">Coimbatore</option><option value="991">CUDDALORE</option><option value="17630">Dakshina Kannada</option><option value="18101">Davangere</option><option value="1476">DHARMAPURI</option><option value="18422">Dharwad</option><option value="1733">DINDIGUL</option><option value="9307">Ernakulam</option><option value="2197">ERODE</option><option value="18637">Gadag</option><option value="18819">Gulbarga</option><option value="23849">GUNTUR</option><option value="19241">Hassan</option><option value="19659">Haveri</option><option value="23831">Hyderabad</option><option value="9694">Idukki</option><option value="23854">KANCHIPURAM</option><option value="9985">Kannur</option><option value="9007">KANYAKUMARI</option><option value="9010">KARAIKAL</option><option value="8762">KARUR</option><option value="10361">Kasargod</option><option value="19911">Kodagu</option><option value="20130">Kolar</option><option value="9008">KOLLAM</option><option value="20448">Koppal</option><option value="10943">Kottayam</option><option value="11345">Kozhikode</option><option value="23804">KRISHNAGIRI</option><option value="6880">MADURAI</option><option value="14022">Mahe</option><option value="23862">Maitama</option><option value="11755">Malappuram</option><option value="23857">Malda</option><option value="20654">Mandya</option><option value="23868">Midnapore</option><option value="23869">Midnapur</option><option value="23794">MUMBAI</option><option value="21003">Mysore</option><option value="23818">Nagapattinam</option><option value="23790">NAMAKKAL</option><option value="23796">NILGIRIS</option><option value="23829">Nizamabad</option><option value="23825">NOIDA</option><option value="12186">Palakkad</option><option value="23799">Pampanga</option><option value="12635">Pathanamthitta</option><option value="23813">peramabalur</option><option value="9009">PONDICHERRY </option><option value="7280">PUDUKKOTTAI</option><option value="23838">Pune</option><option value="21406">Raichur</option><option value="21694">Ramanagar</option><option value="7943">RAMANATHAPURAM</option><option value="23801">Salem</option><option value="21841">Shimoga</option><option value="7625">SIVAGANGA</option><option value="8255">THANJAVUR</option><option value="2529">THENI</option><option value="12946">Thiruvananthapuram</option><option value="13353">Thrissur</option><option value="2584">TIRUCHIRAPPALLI</option><option value="3067">TIRUNELVELI</option><option value="904">Tirupur</option><option value="3622">TIRUVALLUR</option><option value="4012">TIRUVANNAMALAI</option><option value="4500">TIRUVARUR</option><option value="22203">Tumkur</option><option value="4842">TUTICORIN</option><option value="22767">Udupi</option><option value="23845">UTTAR PRADESH</option><option value="23101">Uttara Kannada</option><option value="5272">VELLORE</option><option value="5950">VILLUPURAM</option><option value="6601">VIRUDHUNAGAR</option><option value="13832">Wayanad</option><option value="23593">Yadgir</option></select>                        <input type="text" name="addr_citytown_text_name" id="city_text" size="35" style="visibility:hidden;left:181px;top:400px;position:absolute;" "=" ">
					</td>
					<td class="reg_input ">
						<font color="#ff0000 ">&nbsp;&nbsp;</font>Pincode : &nbsp;&nbsp;&nbsp; <input name="addr_zip " id="pincode " type="text " size="10 " value=" ">
					</td>
				</tr>
                
                
                <tr>
					<td class="reg_item ">
						District
					</td>  
					<td class="reg_input " colspan="2 ">
						<select name="district_name" id="district_select"><option></option><option value="ARIYALUR ">ARIYALUR</option><option value="CHENNAI ">CHENNAI</option><option value="COIMBATORE ">COIMBATORE</option><option value="Tirupur
                            ">Tirupur</option><option value="CUDDALORE ">CUDDALORE</option><option value="DHARMAPURI ">DHARMAPURI</option><option value="DINDIGUL ">DINDIGUL</option><option value="ERODE ">ERODE</option><option value="THENI ">THENI</option><option value="TIRUCHIRAPPALLI
                            ">TIRUCHIRAPPALLI</option><option value="TIRUNELVELI ">TIRUNELVELI</option><option value="TIRUVALLUR ">TIRUVALLUR</option><option value="TIRUVANNAMALAI ">TIRUVANNAMALAI</option><option value="TIRUVARUR ">TIRUVARUR</option><option value="TUTICORIN
                            ">TUTICORIN</option><option value="VELLORE ">VELLORE</option><option value="VILLUPURAM ">VILLUPURAM</option><option value="VIRUDHUNAGAR ">VIRUDHUNAGAR</option><option value="MADURAI ">MADURAI</option><option value="PUDUKKOTTAI
                            ">PUDUKKOTTAI</option><option value="SIVAGANGA ">SIVAGANGA</option><option value="RAMANATHAPURAM ">RAMANATHAPURAM</option><option value="THANJAVUR ">THANJAVUR</option><option value="KARUR ">KARUR</option><option value="KANYAKUMARI
                            ">KANYAKUMARI</option><option value="Kollam ">Kollam</option><option value="Pondicherry ">Pondicherry</option><option value="Bangalore ">Bangalore</option><option value="Alappuzha ">Alappuzha</option><option value="Ernakulam ">Ernakulam</option><option value="Idukki
                            ">Idukki</option><option value="Kannur ">Kannur</option><option value="Kasargod ">Kasargod</option><option value="Kottayam ">Kottayam</option><option value="Kozhikode ">Kozhikode</option><option value="Malappuram ">Malappuram</option><option value="Palakkad
                            ">Palakkad</option><option value="Pathanamthitta ">Pathanamthitta</option><option value="Thiruvananthapuram ">Thiruvananthapuram</option><option value="Thrissur ">Thrissur</option><option value="Wayanad ">Wayanad</option><option value="Karaikal
                            ">Karaikal</option><option value="Mahe ">Mahe</option><option value="Bagalkot ">Bagalkot</option><option value="Bangalore Rural ">Bangalore Rural</option><option value="Belgaum ">Belgaum</option><option value="Bellary ">Bellary</option><option value="Bidar
                            ">Bidar</option><option value="Bijapur ">Bijapur</option><option value="Chamrajnagar ">Chamrajnagar</option><option value="Chickmagalur ">Chickmagalur</option><option value="Chikkaballapur ">Chikkaballapur</option><option value="Chitradurga
                            ">Chitradurga</option><option value="Dakshina Kannada ">Dakshina Kannada</option><option value="Davangere ">Davangere</option><option value="Dharwad ">Dharwad</option><option value="Gadag ">Gadag</option><option value="Gulbarga ">Gulbarga</option><option value="Hassan
                            ">Hassan</option><option value="Haveri ">Haveri</option><option value="Kodagu ">Kodagu</option><option value="Kolar ">Kolar</option><option value="Koppal ">Koppal</option><option value="Mandya ">Mandya</option><option value="Mysore
                            ">Mysore</option><option value="Raichur ">Raichur</option><option value="Ramanagar ">Ramanagar</option><option value="Shimoga ">Shimoga</option><option value="Tumkur ">Tumkur</option><option value="Udupi ">Udupi</option><option value="Uttara Kannada
                            ">Uttara Kannada</option><option value="Yadgir ">Yadgir</option><option value="Namakkal ">Namakkal</option><option value="Mumbai ">Mumbai</option><option value="NILGIRIS ">NILGIRIS</option><option value="canada ">canada</option><option value="Philippines
                            ">Philippines</option><option value="Andaman ">Andaman</option><option value="Salem ">Salem</option><option value="KRISHNAGIRI ">KRISHNAGIRI</option><option value="perambalur ">perambalur</option><option value="Nagapattinam ">Nagapattinam</option><option value="NOIDA
                            ">NOIDA</option><option value="Nizamabad ">Nizamabad</option><option value="Hyderabad ">Hyderabad</option><option value="Ampang ">Ampang</option><option value="Sangli ">Sangli</option><option value="Chittoor ">Chittoor</option><option value="ETAWAH
                            ">ETAWAH</option><option value="GUNTUR ">GUNTUR</option><option value="KANCHIPURAM ">KANCHIPURAM</option><option value="Malda ">Malda</option><option value="BAILHONGAL ">BAILHONGAL</option><option value="Maitama ">Maitama</option><option value="Ahmedabad
                            ">Ahmedabad</option><option value="Kolkatta ">Kolkatta</option><option value="SAHARANPUR ">SAHARANPUR</option></select>
					</td>
                </tr> 
                <tr>
					<td class="reg_item ">
						State:
					</td>  
					<td class="reg_input " colspan="2 ">
						<select name="state" id="state_select "><option></option><option value="ANDAMAN ">ANDAMAN</option><option value="Abuja ">Abuja</option><option value="Andhra Pradesh ">Andhra Pradesh</option><option value="Gujarat
                            ">Gujarat</option><option value="KARAIKAL ">KARAIKAL</option><option value="Karnataka ">Karnataka</option><option value="Kerala ">Kerala</option><option value="MAHARASHTRA ">MAHARASHTRA</option><option value="Philippines ">Philippines</option><option value="Pondicherry
                            ">Pondicherry</option><option value="SRILANKA ">SRILANKA</option><option value="Selangor ">Selangor</option><option value="Tamilnadu " selected=" ">Tamilnadu</option><option value="Telangana ">Telangana</option><option value="Uttar Pradesh
                            ">Uttar Pradesh</option><option value="West Bengal ">West Bengal</option><option value="canada ">canada</option><option value="karnataka ">karnataka</option></select>  <input type="text " name="state_text_name " id="state_text " size="35 " style="visibility:hidden;left:181px;top:467px;position:absolute; ">  
					</td>
                </tr>    
                <tr>    
                    <td class="reg_item ">
						Country:
					</td>
					<td class="reg_input " colspan="2 "> 
                    
						<select name="country" id="country_select " onchange="change_state_city(this.value); "><option></option><option value="India " selected=" ">India</option><option value="Malaysia ">Malaysia</option><option value="Nigeria
                            ">Nigeria</option><option value="Philippines ">Philippines</option><option value="Singapore ">Singapore</option><option value="Srilanka ">Srilanka</option><option value="canada ">canada</option></select>
					</td>                                
				</tr>  
                <tr>
                    <td>
                        Nationality:
                    </td>
                    <td>
                        <input type="text" name="citizenship">
                    </td>
                </tr>  
                <tr>
                <td>
                    Phone No:
                    <td>
                        <input type="number" name="phone">
                    </td>
                </td>
            </tr> 
            <tr>
                <td>
                    Aadhar No
                    <td>
                        <input type="number" name="aadhar">
                    </td>
                </td>
            </tr>
                <tr>
               <td>Bill Type
               </td>
<td><input type="varchar" name="bill"></td>
               </tr>
			   <tr>
               <td>Auth Number
               </td>
<td><input type="number" name="auth"></td>
               </tr>
               <tr>
               <td>Insurance Number
               </td>
<td><input type="number" name="ins"></td>
               </tr>
               <tr>
               <td>Id Number
               </td>
<td><input type="number" name="id"></td>
               </tr>
               <tr>
               <td>Policy Number
               </td>
<td><input type="number" name="policy"></td>
               </tr>
				
                <tr>
  <td class="reg_item ">Authorization/Claim No.</td>
  <td class="reg_input " colspan="2 "><input name="insurance_nr " type="text " size="35 " value=" " ></td>
</tr> 
				<tr>
				<td class="reg_item ">
					Insurance/Corporate :
				</td>
				<td colspan="2 " class="reg_input ">
					<input type="text" name="insurance_type">
				</td>
				</tr>
                
			
			

				
				
				
				
		</tbody></table>

					
<input type="submit">
<input type="reset">
		
	</form>
        </body>

        </html>