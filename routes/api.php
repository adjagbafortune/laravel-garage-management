<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\VehiculeApiController;
use App\Http\Controllers\Api\ReparationApiController;
use App\Http\Controllers\Api\TechnicienApiController;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('vehicules', VehiculeApiController::class);
Route::resource('reparations', ReparationApiController::class);
Route::resource('techniciens', TechnicienApiController::class);