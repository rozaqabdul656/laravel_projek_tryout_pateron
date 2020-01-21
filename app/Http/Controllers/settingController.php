<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\dashboardModel;
use App\bidangModel;
class settingController extends Controller
{
    public function index(){
		$datas3 = bidangModel::get();
        return view('setting',compact('datas3'));       
	}

	public function create(){
	    $data=bidangModel::where('id_bidang','1')->get();
        foreach ($data as $ceks1){
        	$waktu_saintek=$ceks1->waktu;	
        }
		
		$datas=bidangModel::where('id_bidang','2')->get();
        foreach ($datas as $ceks){
        	$waktu_soshum=$ceks->waktu;	
        }

  //       $pecah = explode(":", $waktu_saintek);
  //       $jam=$pecah[0];
		// $menit=$pecah[1];
  //       $detik=$pecah[2];

  //       $total_saintek=intval($jam)*60+intval($menit);

  //       $pecah1 = explode(":", $waktu_soshum);
  //       $jam1=$pecah1[0];
		// $menit1=$pecah1[1];
  //       $detik1=$pecah1[2];

  //       =intval($jam1)*60+intval($menit1);
        
$total_soshum=$waktu_soshum;
$total_saintek=$waktu_saintek;


        $datas3 = bidangModel::get();
    
        return view('setting',compact('datas3','total_soshum','total_saintek'));   

	}
	public function store(Request $request ){
	
        $this->validate($request,[
            'waktu' => ['required'],
            'waktu1' => ['required'],
            'opsiSaintek' => ['required'],
            'opsiSoshum' => ['required'], 
        ]);
  //       $waktu_san=$request->get('waktu1');
  //       $jam=$waktu_san/60;
		// $menit=$waktu_san%60;
		// $jam=floor($jam);
            
		// $total=strval($jam).':'.strval($menit).':'.'00';

		
		// $waktu_sos=$request->get('waktu');
  //       $jam1=$waktu_sos/60;
		// $jam1=floor($jam1);
		// $menit1=$waktu_sos%60;
		// $total1=strval($jam1).':'.strval($menit1).':'.'00';


        bidangModel::where('id_bidang','=','1')->update([
             	'waktu' => $request->get('waktu1'),
                'status' => $request->get('opsiSaintek'),
                ]);
        bidangModel::where('id_bidang','=','2')->update([
             	'waktu' => $request->get('waktu'),
                'status' => $request->get('opsiSoshum'),
                ]);
      // alert()->success('Berhasil.','Data telah ditambahkan!');
        return redirect()->route('setting.create');
	} }
