<html>
    <h1>Appointments</h1>
    <form action="appointment" method="post">
    {{ csrf_field() }}
    <table>
<tr>    
<td>    
    Doctor ID:
</td>
<td>    
    <input type="number" name="doc_id">
</td>    
</tr>
<tr>
<td>    
    Patient ID:
</td>
<td>    
    <input type="number" name="uhid">
</td>    
</tr>
<tr>
    <td>
    Date:
</td>
<td>
    <input type="date" name="date">
</td>
</tr>
<tr>
    <td>
    Time:
</td><td>
    <input type="time" name="time">
</td>
</tr>
<tr>
    <td>
    Ward:
</td>
<td>
    <input type="text" name="ward">
</td>
</tr>
<tr>
    <td>
    <input type="submit">
</td>
<td>
    <input type="reset">
</td>
</tr> 
</table>
    </form>
<html>
