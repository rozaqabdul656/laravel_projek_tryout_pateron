<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
});

Auth::routes();
//Route::get('/', 'HomeController@index')->name('home');


Route::get('/home', 'HomeController@index')->name('home');

// route::get('/','dashboardController@index');
// route::get('/home','dashboardController@index');

route::resource('/logout','LoginController');
route::resource('/peserta','anggotaController');

route::put('/editpeserta','anggotaController@edit');

Route::resource('/setting', 'settingController');

Route::post('/tryoutsoal', 'tryoutController@soal');

Route::get('/back-tryoutsoal', 'tryoutController@back');


Route::resource('/hasiltryout', 'hasiltryoutController');

Route::get('/login', 'Controller@login');
Route::get('/register', 'Controller@register');
Route::resource('/soal-tryout', 'soalController');
Route::resource('/register-peserta', 'registerController');
Route::get('/daftar-peserta', 'registerController@peserta');

Route::get('//tolaktryout', 'tryoutController@akses');

Route::resource('/tryout', 'tryoutController');

Route::get('/hasil-tryout', 'tryoutController@hasil');

Route::get('/materi', 'materiController@index');

Route::resource('/materi-pateron', 'materiController');

Route::get('/rangkuman/{data}',function ($data){
	return view('materi.create-materi',compact('data'));
});

Route::get('/delete-materi/{data}','materiController@destroy');

Route::get('/rangkuman-user/{data}','rangkumanController@show');

Route::get('/rangkuman-hapus/{data}/{datas}','rangkumanController@delete');

Route::get('/rangkuman-detail/{data}','rangkumanController@detail');



Route::resource('/rangkuman-pateron','rangkumanController');



Route::resource('/soals', 'soalController_2');

  

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
