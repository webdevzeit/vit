<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Arr;

use App\Country;
use App\Personal;
use App\Trip;
use DB;

class TripsController extends Controller
{
    public function show(Request $request)
    {

        $countries = Country::all();

        $personals = Personal::all();

        $data = [

            'countries' => $countries,

            'personals' => $personals
        ];

        if ($request->isMethod('post')){

            $input = $request->except('_token');

            $country_name = $input['country'];

            $curent_country = DB::table('countries')->where('name',$country_name)->get()->toArray();

            $country_time = $curent_country['0']->time;

            $date = $input['date_out'];

            $date_in = Carbon::createFromFormat("Y-m-d",$date)->addDays($country_time)->format('Y-m-d');

            $input = array_add($input, 'date_in', $date_in);


            $trip = new Trip();
        
            $trip->fill($input);
            if($trip->save()){
                return redirect('add/trip')->with('status','Поездка добавлена!');
            }
        }


        return view('addTrips',$data);


    }
}
