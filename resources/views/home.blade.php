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
      <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
          </div>

          <!-- Content Row -->
          <div class="row">
            <!-- Hallo -->
            <div class="col-xl-6 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-md font-weight-normal text-dark mb-1 text-center" style="color:#333;">
                        Hai <b class="text-success">{{Auth::user()->name}} !</b>, sudah tau belum kalau di Pateron ada fitur baru?<br>
                        yaitu <b class="text-primary">Materi Belajar</b> dan juga <b class="text-primary">Artikel</b>. Yuk cek sekarang, jangan sampai kamu ketinggalan...</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Try Out -->
            <div class="col-xl-6 col-md-6 mb-4">
                <div class="card border-left-primary shadow h-100 py-2">
                  <div class="card-body">
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                        <div class="text-sm font-weight-normal text-primary mb-1">Sudah ikut Try Out belum? Yuk cek disini</div>
                       <a href="{{url('/tryout')}}"> 
                            <div class="btn btn-primary" style="width:100%;">Try Out</div>
                      </a>  
                      </div>
                      <div class="col-lg-2 text-center ">
                        <i class="fas fa-calendar fa-2x text-gray-300"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
          </div>

          <!-- Content Row -->
          <div class="row">
            <div class="col-xl-12 col-lg-12">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Kumpulan Materi</h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                  <div class="row">
                    <!-- sliders -->
                      <div class="col-lg-8 col-md-8 col-sm-8 col-12">
                       <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                              <ol class="carousel-indicators">
                                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                              </ol>
                             @foreach($data1 as $data)
                       
                              <div class="carousel-inner">
                                <div class="carousel-item active">
                                  <img  src="{{asset('images/materi/gambar/'.$data->foto)}}" >
                                  <div class="carousel-caption d-none d-md-block">
                                    <h5>{{$data->judul_materi}}</h5>
                                  </div>
                                </div>
                                @endforeach

                          </div>
                              <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                                <div style="width:40px;height:40px;background-color: #333;border-radius:50%;padding-top:10px;">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                  </div>
                                <span class="sr-only">Previous</span>
                              </a>
                              <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                                  <div style="width:40px;height:40px;background-color: #333;border-radius:50%;padding-top:10px;">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                              </div>
                                <span class="sr-only">Next</span>
                              </a>
                            </div>
                      </div>
                      <div class="col-lg-4 col-md-4 col-sm-4 col-12 mt-5" id="recomendation-side">
                        <h6>Kumpulan Materi</h6>
                        <div class="row">
                            @foreach($data2 as $datas)
                       
                          <div class="col-lg-6 col-md-6 col-sm-12 col-12 mt-5">
                              <div class="recomendation">
                                  <img src="{{asset('images/materi/gambar/'.$datas->foto)}}" class="d-block w-100" alt="photo-slider">
                                  <a href="{{url('/materi')}}" class="recomendation-title"><p>{{$data->judul_materi}}</p></a>
                              </div>
                          </div>
                           @endforeach

                        </div>
                      </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

        <!-- /.container-fluid -->

@endsection