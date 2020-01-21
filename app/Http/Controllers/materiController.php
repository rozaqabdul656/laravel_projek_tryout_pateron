<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\materiModel;
use Carbon\Carbon;
use App\modelRangkuman;


class materiController extends Controller
{
    public function index()
    {
   		$datas = materiModel::get();
   		$no=1;
        return view('materi.index',compact('datas','no'));       

    }public function create(){
      return view('materi.create');
      

    }
    public function store(Request $request)
    {
           

        if($request->file('gambar')) {
            $file = $request->file('gambar');
            $dt = Carbon::now();
            $acak  = $file->getClientOriginalExtension();
            $fileName = rand(11111,99999).'-'.$dt->format('Y-m-d-H-i-s').'.'.$acak; 
            $request->file('gambar')->move("images/materi/gambar", $fileName);
            $cover = $fileName;
        }

        $file = $request->file('materi');
   
      // Mendapatkan Nama File
      $nama_file = $file->getClientOriginalName();
   
      // Mendapatkan Extension File
      $extension = $file->getClientOriginalExtension();
  
      // Mendapatkan Ukuran File
      $ukuran_file = $file->getSize();
   
      // Proses Upload File
      $file->move('images/materi/pdf',$file->getClientOriginalName());


             $soal = materiModel::create([
                'judul_materi'=>$request->get('judul'),
                'foto'=>$cover,
                'file'=>$nama_file

            ]);       
        return redirect()->route('materi-pateron.index');
    }


    public function update(Request $request,$id)
    {

          $ids=Auth::user()->id;

          foreach ($request->file['rangkuman'] as $data) {

            $dt = Carbon::now();
            $acak  = $data->getClientOriginalExtension();
            $fileName = rand(11111,99999).'-'.$dt->format('Y-m-d-H-i-s').'.'.$acak; 
            $request->file('gambar')->move("images/materi/gambar", $fileName);
            $cover = $fileName;

              modelRangkuman::create([
                'foto'=>$cover,
                'id'=>$ids,
                'id_materi'=>$id

            ]);  
          }





    }    

    public function destroy($id)
    {

   		   materiModel::where('id_materi','=',$id)->delete();
        
              return redirect()->back();
 
    }
    
}
