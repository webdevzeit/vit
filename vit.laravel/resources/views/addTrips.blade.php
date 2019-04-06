@extends('layout.index')
@section('title','Добавить поездку')
@section('body')
@if (session('status'))
    <div class="alert alert-success">
        {{ session('status') }}
    </div>
    @endif
<form method="post" action="{{ route('addTrip') }}" id="add-form">  
{{   csrf_field()  }}   
    <div class="form-group">
        <label for="country">Регион</label>
        <select class="custom-select" name="country" id="country">
        <option selected disabled>Выбрать регион...</option>
        @foreach($countries as $k => $value)
          <option>{{ $value['name'] }}</option>
        @endforeach
      </select>
        <label for="personal">Курьер</label>
        <select class="custom-select" name="personal" id="personal">
        <option selected disabled>Выбрать сотрудника...</option>
        @foreach($personals as $k => $value)
          <option>{{ $value['fio'] }}</option>
        @endforeach
      </select>
        <h6>Дата отправки</h6>
         <input type="date" class="form-control" name="date_out" id="date_out">
    </div>
    <button type="submit" class="btn btn-primary">Добавить</button>
  </form>
@endsection