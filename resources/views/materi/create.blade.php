@section('js')
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {
    $(".users").select2();
});

</script>

<script type="text/javascript">
        function readURL() {
            var input = this;
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $(input).prev().attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }

        $(function () {
            $(".uploads").change(readURL)
            $("#f").submit(function(){
                // do ajax submit or just classic form submit
              //  alert("fake subminting")
                return false
            })
        })
        </script>
@stop

@extends('layouts.app')

@section('content')

<form method="POST" action="{{ route('materi-pateron.store') }}" enctype="multipart/form-data">
    {{ csrf_field() }}
<div class="row">
            <div class="col-md-12 d-flex align-items-stretch grid-margin">
              <div class="row flex-grow">
                <div class="col-12">
                  <div class="card">
                    <div class="card-body">
                      <h4 class="card-title">Tambah Materi </h4>
                      
                        <div class="form-group{{ $errors->has('judul') ? ' has-error' : '' }}">
                            <label for="soal" class="col-md-4 control-label">Judul Materi</label>
                            <div class="col-md-6">
                                <textarea class="form-control" cols="100" name="judul"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-md-4 control-label">InputKan Cover Materi </label>
                            <div class="col-md-6">
                                <input type="file" class="uploads form-control" style="margin-top: 20px;" name="gambar">
                            </div>
                        </div>
                        <br>
                        <br>
                        <div class="form-group{{ $errors->has('materi') ? ' has-error' : '' }}">
                            <label for="materi" class="col-md-4 control-label">InputKan Materi </label>
                            <div class="col-md-6">
                                <input type="file" id="filea"  class="form-control" name="materi" value="{{ old('option_a') }}" >
                            </div>
                        </div   >
                        <button type="submit" class="btn btn-primary" id="submit">
                                    Submit
                        </button>
                        <button type="reset" class="btn btn-danger">
                                    Reset
                        </button>
                        <!-- <a href="" class="btn btn-light pull-right">Back</a> -->
                    </div>
                  </div>
                </div>
              </div>
            </div>

</div>
</form>
<script type="text/javascript">
                function init() {
                            document.getElementById('option_a').setAttribute("readonly", true);
                           document.getElementById('option_b').setAttribute("readonly", true);
                           document.getElementById('option_c').setAttribute("readonly", true);
                           document.getElementById('option_d').setAttribute("readonly", true);
                           document.getElementById('option_e').setAttribute("readonly", true);
                            document.getElementById('filea').setAttribute("disabled", true);
                           document.getElementById('fileb').setAttribute("disabled", true);
                           document.getElementById('filec').setAttribute("disabled", true);
                           document.getElementById('filed').setAttribute("disabled", true);
                           document.getElementById('filee').setAttribute("disabled", true);
                            }
                            init();
            </script>

<script type="text/javascript">
                            function tidak(){
                           document.getElementById('pengecekan').setAttribute("value","ya");
                                
                           document.getElementById('option_a').setAttribute("readonly", true);
                           document.getElementById('option_b').setAttribute("readonly", true);
                           document.getElementById('option_c').setAttribute("readonly", true);
                           document.getElementById('option_d').setAttribute("readonly", true);
                           document.getElementById('option_e').setAttribute("readonly", true);
                           document.getElementById('filea').removeAttribute("disabled");
                           document.getElementById('fileb').removeAttribute("disabled");
                           document.getElementById('filec').removeAttribute("disabled");
                           document.getElementById('filed').removeAttribute("disabled");
                           document.getElementById('filee').removeAttribute("disabled");
                                                       

                         }
                            function ada(){
                            document.getElementById('pengecekan').setAttribute("value","tidak");
                          
                            document.getElementById('filea').setAttribute("disabled", true);
                           document.getElementById('fileb').setAttribute("disabled", true);
                           document.getElementById('filec').setAttribute("disabled", true);
                           document.getElementById('filed').setAttribute("disabled", true);
                           document.getElementById('filee').setAttribute("disabled", true);
                             document.getElementById('option_a').removeAttribute("readonly");
                           document.getElementById('option_b').removeAttribute("readonly");
                           document.getElementById('option_c').removeAttribute("readonly");
                           document.getElementById('option_d').removeAttribute("readonly");
                           document.getElementById('option_e').removeAttribute("readonly");
                            

                            }
                            </script>


@endsection