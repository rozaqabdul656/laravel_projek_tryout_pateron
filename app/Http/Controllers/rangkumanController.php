<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use DB;
use App\materiModel;
use Carbon\Carbon;
use App\modelRangkuman;


class rangkumanController extends Controller
{
 	public function __construct()
    {
        $this->middleware('auth');
        
    }
    public function index(){

      
    }
	 public function store(Request $request){

	 	  $ids=Auth::user()->id;

          foreach ($request->file('rangkuman') as $data) {

            $dt = Carbon::now();
            $acak  = $data->getClientOriginalExtension();
            $fileName = rand(11111,99999).'-'.$dt->format('Y-m-d-H-i-s').'.'.$acak; 
            $data->move("images/materi/rangkuman", $fileName);
            $cover = $fileName;

              modelRangkuman::create([
                'foto'=>$cover,
                'id'=>$ids,
                'id_materi'=>$request->get('materi')
            ]);  
          }

           return redirect()->route('materi-pateron.index');
 	}
 	public function show($id){

        $datas=db::table('tb_rangkuman')->Join('users as r','r.id','=','tb_rangkuman.id')->where('id_materi',$id)->groupBy('tb_rangkuman.id')->get();
        $no=1;
       return view('materi.daftar-upload-user',compact('datas','no'));
    
 	}
 	public function detail($id){

        $datas=db::table('tb_rangkuman')->where('id',$id)->get();
       	return view('materi.detail-upload',compact('datas'));

 	}

 	public function delete($id,$ids){
 			
        $datas=db::table('tb_rangkuman')->where('id',$id)->delete();
       	return redirect()->back();
 	}
}
