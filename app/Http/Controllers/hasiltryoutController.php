<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;
use Auth;
use App\tryoutModel;

class hasiltryoutController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
        
    }
    public function index(){

        if(Auth::user()->level == 'USER') {
            return redirect()->to('/');
        }
    	// $datas = tryoutModel::get()->where('id_bidang','1');
    	$datas2 = DB::table('tb_hasil')
            ->leftJoin('users', 'users.id', '=', 'tb_hasil.id')
            ->where('id_bidang','2')->whereNull('keterangan')
         	->get();

    	$datas = DB::table('tb_hasil')
            ->leftJoin('users', 'users.id', '=', 'tb_hasil.id')
            ->where('id_bidang','1')->whereNull('keterangan')
         	->get();
         $no=1;
         $nos=1;
    	return view('tryout.hasiltryout',compact('datas','datas2','no','nos'));

    }
    public function store(Request $request){
 		$id=$request->get('id');
	   	
		tryoutModel::where('id_hasil','=',$id)->update([
             	'keterangan' => $request->get('keterangan')
                ]);

		  return redirect()->route('hasiltryout.index');

    }
}
