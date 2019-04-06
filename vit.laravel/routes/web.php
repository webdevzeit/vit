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

Route::match(['get','post'],'/',['uses'=>'IndexController@home','as'=>'main' ]);

Route::match(['get','post'],'personal',['uses'=>'PersonalController@view','as'=>'personal' ]);

Route::match(['get','post'],'country',['uses'=>'CountryController@view','as'=>'country' ]);


Route::match(['get','post'],'add/personal',['uses'=>'PersonalController@show','as'=>'addPersonal' ]);

Route::match(['get','post'],'add/country',['uses'=>'CountryController@show','as'=>'addCountry' ]);

Route::match(['get','post'],'add/trip',['uses'=>'TripsController@show','as'=>'addTrip' ]);


Route::match(['get','post'],'trips/personal/{id}',['uses'=>'PersonalController@sort','as'=>'sortPersonal']);

Route::match(['get','post'],'trips/country/{id}',['uses'=>'CountryController@sort','as'=>'sortCountry' ]);
