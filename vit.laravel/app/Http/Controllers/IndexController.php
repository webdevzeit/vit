<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use App\Courier;
use App\Country;
use App\Trip;
use DB;

class IndexController extends Controller
{


    public function home(Request $request)
    {	

    	if ($request->isMethod('post')){

    		
    		$input = $request->except('_token');

    		$date_in = $input['date_in'];

    		$date_out =  $input['date_out'];

    		if($input['date_in'] == '' && $input['date_out'] == ''){

    			$date_search = '';

    			$trips = DB::table('trips')->orderBy('id','desc')->get();

    		}elseif($input['date_in'] == '' && $input['date_out'] != ''){

    			$date_search =' До - '.$date_out;

    		$trips = DB::table('trips')
			->orderBy('date_out','desc')
            ->where('date_in','<',$date_out)
            ->get();


    		}elseif ($input['date_in'] != '' && $input['date_out'] == '') {
    			
    			$date_search = 'От - '.$date_in;

    		$trips = DB::table('trips')
			->orderBy('date_out','desc')
            ->where('date_out','>', $date_in)
            ->get();

    		}else{

    		$date_search = 'От - '.$date_in.' До - '.$date_out;

    		$trips = DB::table('trips')
			->orderBy('date_out','desc')
            ->where('date_out','>', $date_in)
            ->where('date_in','<',$date_out)
            ->get();


    		}

    	$data = ['trips' => $trips,'date_search'=>$date_search];


    	return view('home',$data);
}
		$date_now = Carbon::now()->format('Y-m-d');

		$date_search = '';

		$trips = DB::table('trips')
			->orderBy('date_in','desc')
            ->where('date_out','>', $date_now)
            ->where('date_in','>',$date_now)
            ->get();


    	$data = ['trips' => $trips,'date_search'=>$date_search];

        return view('home',$data);
    }

}
