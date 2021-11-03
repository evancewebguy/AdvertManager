<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\BrandController;

/*
|--------------------------------s------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


//Brand Route
Route::get('/brand/all',[BrandController::class, 'AllBrand'])->name('all.brand');
Route::get('/brand/show/{id}',[BrandController::class, 'show'])->name('show');
Route::post('/brand/add',[BrandController::class, 'StoreBrand'])->name('store.brand');
Route::post('/brand/images',[BrandController::class, 'StoreBanners']);
Route::get('/brand/edit/{id}',[BrandController::class, 'Edit']);
Route::post('/brand/update/{id}',[BrandController::class, 'Update']);
Route::get('/brand/delete/{id}',[BrandController::class, 'Delete']);

//multi-image Route
Route::get('/multi/image',[BrandController::class, 'Multipic'])->name('multi.image');
Route::post('/multi/add',[BrandController::class, 'StoreImg'])->name('store.image');

