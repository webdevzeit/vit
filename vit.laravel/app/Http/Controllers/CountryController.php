<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Country;
use DB;

class CountryController extends Controller
{
    public function show(Request $request)
    {

    	if ($request->isMethod('post')){

    		
    		$input = $request->except('_token');

    		$country = new Country();
    	
            $country->fill($input);
            if($country->save()){
                return redirect('add/country')->with('status','Регион добавлен!');
            }
    	}

        return view('addCountry');
    }


    public function view()
    {
    	$country = Country::all();

    	$data = ['country'=>$country];
    	return view('country',$data);
    }

    public function sort($id){

        $trips = DB::table('trips')->where('country',$id)->orderBy('id','desc')->get();

        $data = ['trips'=>$trips,'country'=>$id];

        return view('country_trips',$data);
    }
}
