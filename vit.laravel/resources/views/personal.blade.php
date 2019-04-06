@extends('layout.index')
@section('title','Курьеры')
@section('body')

<div class="table">
<h4>Список курьеров</h4>
    <table class="table table-bordered">
        <thead>
            <tr>
              <th scope="col">ID</th>
              <th scope="col">ФИО</th>
              <th scope="col">Статус на сегодня</th>
              <th scope="col">Все поездки</th>
            </tr>
          </thead>
          <tbody>
            @foreach($personals as $k =>$value)
            <tr>
           	<td>{{ $value['id'] }}</td>
    		    <td>{{ $value['fio'] }}</td>
    		    <td>{{ $value['status'] }}</td>
    		    <td><a href="{{ route('sortPersonal',['id'=>$value['fio']]) }}" class="btn btn-outline-info">Все поездки</a></td>
		        </tr>
            @endforeach 
        </tbody>
    </table>
@endsection