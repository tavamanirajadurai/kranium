<html>
    <body>
        <h1>Nurse Registration</h1>
        <form method="POST" action="nurse_registration">
        {{ csrf_field() }}
            <table>
<tr><td>
        Name: </td><td>   
        <input type="text" name="name"></td>
</tr>
<tr><td>
        Age:</td><td>
        <input type="number" name="age"></td>
        </tr>
<tr><td>
       Street:</td><td>
        <input type="text" name="street"></td>
        </tr>
<tr><td>
<tr><td>
       Area:</td><td>
        <input type="text" name="area"></td>
        </tr>
<tr><td>
<tr><td>
       District:</td><td>
        <input type="text" name="district"></td>
        </tr>
<tr><td>
<tr><td>
      country:</td><td>
        <input type="text" name="country"></td>
        </tr>
<tr><td>
<tr><td>
       Nationality:</td><td>
        <input type="text" name="nationality"></td>
        </tr>
<tr><td>
        Phno:</td><td>
        <input type="number" name="phno"></td>
        </tr>
<tr><td>
        Date of Birth:</td><td>
        <input type="date" name="dob"></td>
        </tr>
<tr><td>
        Date of Joining:</td><td>
        <input type="date" name="doj"></td>
        </tr>
<tr><td>
        Ward:</td><td>
        <input type="text" name="ward"></td>
        </tr>
<tr><td>
        Room:</td><td>
        <input type="number" name="room"></td>
        </tr>

</table>
<input type="submit">
<input type="reset">
    </form>
        <body>
</html>