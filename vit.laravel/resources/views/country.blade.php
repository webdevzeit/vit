@extends('layout.index')
@section('title','Регионы')
@section('body')

<div class="table">
<h4>Список регионов</h4>
    <table class="table table-bordered">
        <thead>
            <tr>
              <th scope="col">ID</th>
              <th scope="col">Регион</th>
              <th scope="col">Время в поездке</th>
              <th scope="col">Просмотреть поездки</th>
            </tr>
          </thead>
          <tbody>
            @foreach($country as $k =>$value)
            <tr>
           	<td>{{ $value['id'] }}</td>
		    <td>{{ $value['name'] }}</td>
		    <td>{{ $value['time'] }}</td>
		    <td><a href="{{ route('sortCountry',['id'=>$value['name']]) }}" class="btn btn-outline-info">Все поездки</a></td>
		    </tr>
            @endforeach 
        </tbody>
    </table>
@endsection