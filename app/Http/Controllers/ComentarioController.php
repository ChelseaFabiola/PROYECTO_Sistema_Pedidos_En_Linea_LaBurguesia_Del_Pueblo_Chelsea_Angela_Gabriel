<?php

namespace App\Http\Controllers;

use App\Models\comentario;

use Illuminate\Http\Request;
use App\Models\eventos;
use App\Models\galeria;


class ComentarioController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $imagenes['imagenes'] = Galeria::all();

        //recibir los datos de la base de datos
        $comentarios['comentarios'] = Comentario::orderBy('created_at', 'desc')->get();

        // $comentarios['comentarios']=Comentario::all();
        return view('burguesia.index',$comentarios,$imagenes);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //recepcionamons todos los datos
        $datosRecibidos=request()->all();
        Comentario::create($datosRecibidos);

        return redirect('/');
    }

    /**
     * Display the specified resource.
     */
    public function show(comentario $comentario)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(comentario $comentario)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, comentario $comentario)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function estatus(Request $request, comentario $comentario)
{
    // Validar el comentario
    $comentario->update(['estatus' => 1]);

    // Almacenar el mensaje de éxito en la sesión
    return redirect()->back()->with('success', 'Comentario validado con éxito');
}

public function destroy(comentario $comentario)
{
    // Eliminar el comentario
    $comentario->delete();

    // Almacenar el mensaje de éxito en la sesión
    return redirect()->back()->with('success', 'Comentario eliminado con éxito');
}

}
