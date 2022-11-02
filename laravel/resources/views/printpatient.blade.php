<h1>Patient List</h1>

<table border="1">    
<th>Patient Id</th> <th>Patient Name</th> <th>Age</th> <th>Blood</th> 
    @foreach($data1s as $data1)
    <tr><td>{{$data1['uhid']}}</td>
    <td>{{$data1['firstname']}}</td>
    <td>{{$data1['age']}}</td>
    <td>{{$data1['blood']}}</td></tr>
    @endforeach 
</table>

