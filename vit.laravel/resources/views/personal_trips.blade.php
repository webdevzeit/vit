@extends('layout.index')
@section('title','Поездки')
@section('body')

<div class="table">
<h4> Курьер - {{ $personal }}</h4>
    <table class="table table-bordered">
        <thead>
            <tr>
              <th scope="col">ID</th>
              <th scope="col">Регион</th>
              <th scope="col">Курьер</th>
              <th scope="col">Выезд</th>
              <th scope="col">Приезд</th>
            </tr>
          </thead>
          <tbody>
            @foreach($trips as $k =>$value)
            <tr>
            <td>{{ $value->id }}</td>
            <td>{{ $value->country }}</td>
            <td>{{ $value->personal }}</td>
            <td>{{ $value->date_out }}</td>
            <td>{{ $value->date_in }}</td>
           </tr>
            @endforeach 
        </tbody>
    </table>
@endsection