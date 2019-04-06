@extends('layout.index')
@section('title','Добавить курьера')
@section('body')
@if (session('status'))
    <div class="alert alert-success">
        {{ session('status') }}
    </div>
    @endif
<form method="post" action="{{ route('addPersonal') }}" id="add-form">  
{{   csrf_field()  }}   
    <div class="form-group">
        <label for="fio">Добавление курьера</label>
        <input type="hidden" name="status">
            <input type="text" class="form-control" name="fio" id="fio" placeholder="ФИО">
    </div>
    <button type="submit" class="btn btn-primary">Добавить</button>
  </form>
@endsection
