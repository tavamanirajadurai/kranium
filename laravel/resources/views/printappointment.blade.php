<h1>Appointment List</h1>

<table border="1">
<th>Patient Id</th> <th>Doctor Id</th> <th>Date</th> <th>Time</th> <th>Ward</th>
    @foreach($data1s as $data1) 
    <tr><td>{{$data1['uhid']}}</td>
    <td>{{$data1['doc_id']}}</td>
   <td>{{$data1['date']}}</td>
    <td>{{$data1['time']}}</td>
    <td>{{$data1['ward']}}</td></tr>
    @endforeach
</table>