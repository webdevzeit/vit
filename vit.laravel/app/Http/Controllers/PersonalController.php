<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Personal;
use DB;

class PersonalController extends Controller
{
     public function show(Request $request)
    {

    	if ($request->isMethod('post')){

    		
    		$input = $request->except('_token');

    		if($input['status'] != ''){
    			
    		}else{
    			$input['status'] = 'Свободен';
    		}

    		$personal = new Personal();
    	
            $personal->fill($input);
            if($personal->save()){
                return redirect('add/personal')->with('status','Курьер добавлен!');
            }
    	}

        return view('addPersonal');
    }

    public function view()
    {
        $personals = Personal::all();


        $data = ['personals'=>$personals];

    	return view('personal',$data);
    }

    public function sort($id){

        $trips = DB::table('trips')->where('personal',$id)->orderBy('date_out','desc')->get();

        $data = ['trips'=>$trips,'personal'=>$id];

        return view('personal_trips',$data);
    }
}
