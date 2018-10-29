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
Auth::routes();

Route::get('/', 'HomeController@index')->name('home');

//Operator routes
Route::get('/incident/create', 'OperatorController@incidentCreate')->name('incident.create');
Route::get('/incident/store', 'OperatorController@incidentStore')->name('incident.store');
