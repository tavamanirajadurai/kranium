<h1>Nurse List</h1>

<table border="1">
    <th>Nurse Id</th> <th>Name</th> <th>Ward No</th> <th>Room</th> <th>Age</th>
    @foreach($data1s as $data1) 
    <tr><td>{{$data1['nurse_id']}}</td>
      <td>{{$data1['name']}}</td>
    <td>{{$data1['ward']}}</td>
   <td>{{$data1['room']}}</td>
    <td>{{$data1['age']}}</td></tr>
    @endforeach  
</table>