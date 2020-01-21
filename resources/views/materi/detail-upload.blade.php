@section('js')
  <script type="text/javascript">
$(document).ready(function() {
/* langkah 2) inisilasisasi fancybox 
*  Simple image gallery. Uses default settings
*/
  $('.fancybox').fancybox();
      });

<script type="text/javascript">

$(document).ready(function() {
    $(".users").select2();
});

</script>

@stop

@extends('layouts.app')

@section('content')
     {{ csrf_field() }}
        {{ method_field('put') }}
<div class="row">
                     
            <div class="col-md-12 d-flex align-items-stretch grid-margin">
                <div class="col-12">
                  <div class="card">
                    <div class="card-body">
                      <h4 class="card-title">Detail Rangkuman</h4>
                      

                        <div class="form-group">
                            <label for="email" class="col-md-4 control-label">Rangkuman :</label>
                            @foreach($datas as $data)
                
                             <div class="col-md-12">
                                <a href="{{asset('images/materi/rangkuman/'.$data->foto)}}" data-fancybox="gallery">

                                <img src="{{asset('images/materi/rangkuman/'.$data->foto)}}" height="500" width="500">
                                </a>
                             </div>
                        </div>
                        <br>
                        <br>

                         @endforeach

                        <a href="{{ url()->previous() }}" class="btn btn-light pull-right">Back</a>
                    </div>
                  </div>
                </div>
              </div>
</div>
@endsection
