@extends('layout.index')
@section('title','Список поездок на сегодня')
@section('body')
<div class="form-wrapper">
    <form method="post" action="{{ route('main') }}">
      {{   csrf_field() }}   
      <div class="form-row">
        <div class="col-3">
            <h5>ОТ</h5>
            <input type="date" class="form-control" name="date_in" placeholder="Приезд">
        </div>
        <div class="col-3">
           <h5>До</h5>
             <input type="date" class="form-control"  name="date_out" placeholder="Отправка">
        </div>
        <div class="col">
            <input class="btn btn-outline-primary" type="submit" name="search" value="Поиск">
    </form>
</div>
<div class="table">
<h4>Список прибытия  {{ $date_search }}</h4>
    <table class="table table-bordered">
        <thead>
            <tr>
              <th scope="col">ID</th>
              <th scope="col">Регион</th>
              <th scope="col">Курьер</th>
              <th scope="col">Дата отправки</th>
              <th scope="col">Дата прибытия</th>
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
</div>
@endsection
