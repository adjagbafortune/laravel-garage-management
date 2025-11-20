<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Reparation;
use Illuminate\Http\Request;

class ReparationApiController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // On charge nos relations pour avoir les informations complètes en JSON
        $reparations = Reparation::with('vehicule', 'techniciens')->get();
        return response()->json($reparations);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'vehicule_id' => 'required|exists:vehicules,id',
            'date' => 'required|date',
            'duree_main_oeuvre' => 'required|string',
            'objet_reparation' => 'required|string',
            'techniciens' => 'array', // Ajout de la validation pour les techniciens
        ]);

        $reparation = Reparation::create($request->only('vehicule_id', 'date', 'duree_main_oeuvre', 'objet_reparation'));

        // Nous allons ynchroniser la relation many-to-many
        $reparation->techniciens()->sync($request->input('techniciens', []));

        return response()->json($reparation, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Reparation $reparation)
    {
        // chargement des relations pour les détails de la réparation
        $reparation->load('vehicule', 'techniciens');
        return response()->json($reparation);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Reparation $reparation)
    {
        $request->validate([
            'vehicule_id' => 'required|exists:vehicules,id',
            'date' => 'required|date',
            'duree_main_oeuvre' => 'required|string',
            'objet_reparation' => 'required|string',
            'techniciens' => 'array', // Ajout de la validation pour les techniciens
        ]);

        $reparation->update($request->only('vehicule_id', 'date', 'duree_main_oeuvre', 'objet_reparation'));

        // synchronisation de la relation many-to-many
        $reparation->techniciens()->sync($request->input('techniciens', []));

        return response()->json($reparation);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Reparation $reparation)
    {
        // détachement des relations avant de supprimer
        $reparation->techniciens()->detach();
        $reparation->delete();

        return response()->json(null, 204);
    }
}