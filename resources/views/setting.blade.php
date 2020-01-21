@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-body">

                    <form method="POST" action="{{ route('setting.store') }}">
                           <label for="waktu" class="col-md-4 control-label">Waktu Pengerjaan Soal Saintek(Dalam Menit)</label>
                            <div class="col-md-6">
                                       @csrf
             
                                <input id="waktu1" type="number"  class="form-control" name="waktu1" value="{{ $total_saintek }}" required>
                                @if ($errors->has('waktu1'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('waktu1') }}</strong>
                                    </span>
                                @endif
                            </div>
                
                           <label for="waktu" class="col-md-4 control-label">Waktu Pengerjaan Soal Soshum(Dalam Menit)</label>
                            <div class="col-md-6">
                                       @csrf
             
                                <input id="waktu" type="number"  class="form-control" name="waktu" value="{{ $total_soshum }}" required>
                                @if ($errors->has('waktu'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('waktu') }}</strong>
                                    </span>
                                @endif
                            </div>
                
                @foreach($datas3 as $data)
                        <div class="form-group{{ $errors->has('opsi{$data->bidang}') ? ' has-error' : '' }}">
                            <label for="waktu" class="col-md-4 control-label"> Pengerjaan Soal Soal {{$data->bidang}}</label>
                            <div class="col-md-6">
                                <select name="opsi{{$data->bidang}}" class="form-control">
                                    <option value="ON" {{$data->status === "ON" ? "selected" : ""}}>ON</option>
                                    <option value="OFF" {{$data->status === "OFF" ? "selected" : ""}}>OFF</option>
                                
                                
                                </select>
                                @if ($errors->has('opsi{$data->bidang}'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('opsi{$data->bidang}') }}</strong>
                                    </span>
                                @endif
                            </div>

                        </div>
                       @endforeach

                        <input type="submit" name="simpan" value="Simpan" class="btn btn-succes">
                        <input type="reset" name="reset" class="btn btn-danger">
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>

@endsection
