@section('js')
<script type="text/javascript">
  $(document).ready(function() {
    $('#table').DataTable({
      "iDisplayLength": 50
    });

} );
</script>
@stop
@extends('layouts.app')

@section('content')
<div class="row">

  <div class="col-lg-2">
    <a href="{{route('soal-tryout.create')}}" class="btn btn-primary btn-rounded btn-fw"><i class="fa fa-plus"></i> Tambah Soal</a>
  </div>
<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
         
        </div>
    <div class="col-lg-12">
                  @if (Session::has('message'))
                  <div class="alert alert-{{ Session::get('message_type') }}" id="waktu2" style="margin-top:10px;">{{ Session::get('message') }}</div>
                  @endif
                  </div>
</div>
<div class="row" style="margin-top: 20px;">
<div class="col-lg-12 grid-margin stretch-card">
              <div class="card">

                <div class="card-body">
                  <h4 class="card-title pull-left">Data Soal</h4>
                  <div class="table-responsive">
                    <table class="table table-striped" id="table">
                      <thead>
                        <tr>
                          <th>
                            No
                          </th>
                          <th>
                           Soal
                          </th>
                          <th>
                            Option A
                          </th>
                          <th>
                            Option B
                          </th>
                          <th>
                            Option C
                          </th>
                          <th>
                            Option D
                          </th>
                          <th>
                            Option E
                          </th>
                          <th>
                            Kunci Jawaban
                          </th>
                          <th>
                            Mata Pelajaran
                          </th>
                          
                          <th>
                            Action
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                      @foreach($datas as $data)
                        <tr>
                          <td class="py-1">
                            {{$no++}}
                          </td>
                          <td>
                            {{$data->soal}}
                          </td>
                          @if($data ->pengecekan == 'ya')
                        
                          <td class="avatar">
                             <div class="round-img text-center">
                              <img class="rounded-circle" style="width: 100px; height: 100px;" src="{{asset('images/soal/'.$data->option_a)}}" alt="">
                            </div>
                          </td>
                          <td class="avatar">
                             <div class="round-img text-center">
                              <img class="rounded-circle" style="width: 100px; height: 100px;" src="{{asset('images/soal/'.$data->option_b)}}" alt="">
                            </div>
                          </td>
                          <td class="avatar">
                             <div class="round-img text-center">
                              <img class="rounded-circle" style="width: 100px; height: 100px;" src="{{asset('images/soal/'.$data->option_c)}}" alt="">
                            </div>
                          </td>
                          <td class="avatar">
                             <div class="round-img text-center">
                              <img class="rounded-circle" style="width: 100px; height: 100px;" src="{{asset('images/soal/'.$data->option_d)}}" alt="">
                            </div>
                          </td>
                          <td class="avatar">
                             <div class="round-img text-center">
                              <img class="rounded-circle" style="width: 100px; height: 100px;" src="{{asset('images/soal/'.$data->option_e)}}" alt="">
                            </div>
                          </td>
                          
                        @else  
                          <td>
                            {{$data->option_a}}
                          </td>
                          <td>
                            {{$data->option_b}}
                          </td>
                          <td>
                            {{$data->option_c}}
                          </td>
                          <td>
                            {{$data->option_d}}
                          </td>
                          <td>
                            {{$data->option_e}}
                          </td>
                         @endif 
                        
                          <td>
                            {{$data->mapel}}
                            
                          </td>
                          <td>
                            {{$data->kunci}}
                          </td>
                          <td>
                          <div class="btn-group dropdown">
                          <button type="button" class="btn btn-success dropdown-toggle btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Action
                          </button>
                          <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 30px, 0px);">
                            <a class="dropdown-item" href="{{route('soal-tryout.edit',$data->id_soal)}}"> Edit </a>
                            <form action="{{route('soal-tryout.destroy',$data->id_soal)}}" class="pull-left"  method="post">
                            {{ csrf_field()}}
                            {{ method_field('delete') }}
                            <button class="dropdown-item" onclick="return confirm('Anda yakin ingin menghapus data ini?')"> Delete
                            </button>
                          </form>
                           
                          </div>
                        </div>
                          </td>
                        </tr>
                      @endforeach
                      </tbody>
                    </table>
                  </div>
               {{--  {!! $datas->links() !!} --}}
                </div>
              </div>
            </div>
          </div>
@endsection