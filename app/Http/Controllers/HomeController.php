<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\dashboardModel;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
        
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $datas2 = DB::table('tb_hasil')
        //     ->leftJoin('users', 'users.id', '=', 'tb_hasil.id')
        //     ->where('id_bidang','2')->wherenotNull('keterangan')->orderBy('tb_hasil.hasil','desc')
        //     ->get();

        // $datas = DB::table('tb_hasil')
        //     ->leftJoin('users', 'users.id', '=', 'tb_hasil.id')
        //     ->where('id_bidang','1')->wherenotNull('keterangan')->orderBy('tb_hasil.hasil','desc')
        //     ->get();
        //  $no=1;
        //  $nos=1;

         $data1 = DB::table('tb_materi')->limit(3)->get();

         $data2 = DB::table('tb_materi')->get();


        return view('home',compact('data1','data2'));

        // return view('dashboard');
    }

    public function showkonfirm(){
        $user = DB::table('tb_konfirmasi')->get();
 
        // mengirim data pegawai ke view index
        return view('showkonfirm',['user' => $user]);

    }
}
