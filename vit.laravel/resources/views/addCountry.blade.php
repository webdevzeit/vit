@extends('layout.index')
@section('title','Добавить регион')
@section('body')

@if (session('status'))
    <div class="alert alert-success">
        {{ session('status') }}
    </div>
    @endif
<form method="post" action="{{ route('addCountry') }}" id="add-form">  
{{   csrf_field()  }}   
    <div class="form-group">
        <label for="fio">Регион</label>
        <input type="text" class="form-control" name="name" id="country" placeholder="Регион">
         <label for="count">Время на поездку</label>
        <input type="number" class="form-control" name="time" id="count" placeholder="Время на поездку">
    </div>
    <button type="submit" class="btn btn-primary">Добавить</button>
  </form>
@endsection
