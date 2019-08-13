<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Dieta;
use App\Turno;
use App\Users;
use DB;

class RegistroDiarioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $dietas = Dieta::all();
        $turnos = Turno::all();
        $analistas = Users::where('cargo', 'analista')->get();
        return view('calidad.reporteDiario', compact('dietas','turnos','analistas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        header("Content-Type: application/json");

        $lote = json_decode(stripslashes(file_get_contents("php://input")));
        $lote = json_decode(stripslashes($request->lote));

        $baches = json_decode(stripslashes(file_get_contents("php://input")));
        $baches = json_decode(stripslashes($request->baches));

        return json_encode($lote);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
