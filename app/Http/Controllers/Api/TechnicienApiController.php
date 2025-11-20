<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Technicien;
use Illuminate\Http\Request;

class TechnicienApiController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $techniciens = Technicien::all();
        return response()->json($techniciens);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'nom' => 'required|string',
            'prenom' => 'required|string',
            'specialite' => 'required|string',
        ]);

        $technicien = Technicien::create($request->all());

        return response()->json($technicien, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Technicien $technicien)
    {
        return response()->json($technicien);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Technicien $technicien)
    {
        $request->validate([
            'nom' => 'required|string',
            'prenom' => 'required|string',
            'specialite' => 'required|string',
        ]);

        $technicien->update($request->all());

        return response()->json($technicien);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Technicien $technicien)
    {
        $technicien->delete();

        return response()->json(null, 204);
    }
}