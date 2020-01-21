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

<div class="card-body">
                                   <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Data Hasi Saintek</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Data Hasil Soshum</a>
                                    </li>
                                  </ul>
                              <div class="tab-content pl-3 p-1" id="myTabContent">
                                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                    <div class="table-responsive">

                    <table class="table table-striped" id="table">
                      <thead>
                        <tr>
                          <th>
                            No
                          </th>
                          <th>
                           Nama
                          </th>
                          <th>
                            Asal Sekolah
                          </th>
                          <th>
                            Hasil
                          </th>
                          <th>
                            Keterangan
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
                          
                            {{$data->name}}
                          
                          </td>
                          <td>
                            {{$data->asal_sekolah}}
                          </td>
                          <td>
                            {{$data->hasil}}
                          </td>
                          <td>
                            {{$data->keterangan}}
                          </td>
                          <td>
                            <a href="" data-toggle="modal" data-target="#myModal{{$data->id_hasil}}" class="fa fa-edit">Tambah Keterangan</a>
                          </td>
                          
                        </tr>
                 
<div id="myModal{{$data->id_hasil}}" class="modal fade" role="dialog">
   <div class="modal-dialog">
    <!-- konten modal-->
    <div class="modal-content">
        <!-- heading modal -->
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <!-- body modal -->
        <div class="modal-body">
            
            <h5>Masukan Keterangan Yang Ingin Anda Masukan </h5>
            <form method="post" action="{{ route('hasiltryout.store') }}">
              @csrf
              <input type="text" class="form-control" name="keterangan">
              <input type="hidden" value="{{$data->id_hasil}}" name="id">
              <input type="submit"  name="simpan" value="Simpan">
            </form>
          </div>
 

        <!-- footer modal -->
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
    </div>
  </div>
</div>
  @endforeach
       </tbody>
                    </table>
                  </div>
            </div>

           <!-- ============== -->
                  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
              <div class="table-responsive">
                    <table class="table table-striped" id="table">
                      <thead>
                        <tr>
                          <th>
                            No
                          </th>
                          <th>
                           Nama
                          </th>
                          <th>
                            Asal Sekolah
                          </th>
                          <th>
                            Hasil
                          </th>
                          <th>
                            Keterangan
                          </th>
                          <th>
                            Action
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                      @foreach($datas2 as $data)
                        <tr>
                          <td class="py-1">
                            {{$nos++}}
                          </td>
                          <td>
                          
                            {{$data->name}}
                          
                          </td>
                          <td>
                            {{$data->asal_sekolah}}
                          </td>
                          <td>
                            {{$data->hasil}}
                          </td>
                          <td>
                            {{$data->keterangan}}
                          </td>
                          <td>
                            <a href="" data-toggle="modal" data-target="#myModal{{$data->id_hasil}}" class="fa fa-edit">Tambah Keterangan</a>
                          </td>
                          
                        </tr>
                 
<div id="myModal{{$data->id_hasil}}" class="modal fade" role="dialog">
   <div class="modal-dialog">
    <!-- konten modal-->
    <div class="modal-content">
        <!-- heading modal -->
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <!-- body modal -->
        <div class="modal-body">
            
            <h5>Masukan Keterangan Yang Ingin Anda Masukan </h5>
            <form method="post" action="{{ route('hasiltryout.store') }}">
              @csrf
              <input type="text" class="form-control" name="keterangan">
              <input type="hidden" value="{{$data->id_hasil}}" name="id">
              <input type="submit" class="btn btn-succes"  name="simpan" value="Simpan">
            </form>
          </div>
 

        <!-- footer modal -->
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
    </div>
  </div>
</div>
  @endforeach
       </tbody>
                    </table>
                  </div>
            </div>
                                    </div>
                                    
                                </div>

               {{--  {!! $datas->links() !!} --}}
                </div>
              </div>
            </div>
          </div>
@endsection