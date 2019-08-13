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

Route::get('/', 'RegistroDiarioController@index');

Route::get('/insertarInformacion', 'RegistroDiarioController@store')->name('insertarInformacion');

//Route::get('/filtrarTable', 'ConsultaController@FiltrarTabla')->name('filtrarTable');