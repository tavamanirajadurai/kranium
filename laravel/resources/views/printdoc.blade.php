<h1>Doctor List</h1>

<table border="1">
<th>Doctor Id</th> <th>Doctor Name</th> <th>Age</th> <th>Designation</th> <th>Qualification</th>
    @foreach($data1s as $data1)
    <tr><td>{{$data1['doc_id']}}</td>
    <td>{{$data1['firstname']}}</td>
   <td>{{$data1['age']}}</td>
   <td>{{$data1['designation']}}</td>
   <td>{{$data1['qualification']}}</td></tr>
    @endforeach
   
</table>