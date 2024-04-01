<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Lips_benefit;


class Lips_benefitController extends Controller {
   
     public function getAll() {
        $lips_benefits = Lips_benefit::with('lips', 'benefits', 'types')->get();
        return response()->json($lips_benefits);
    }

    public function getOne($id) {
        $lips_benefit = Lips_benefit::with('lips', 'benefits', 'types') ->find($id);
         return response()->json($lips_benefit);
    }

    public function save(Request $request) {
        $this->validate($request, [
            'lips_id' => 'required',
            'benefits_id' => 'required',
        ]);
        $lips_benefit = Lips_benefit::create($request->all());
        return response()->json($lips_benefit, 201);
    }

    public function update(Request $request, $id) {
        $lips_benefit = Lips_benefit::findOrFail($id);
    
        $this->validate($request, [
            'lips_id' => 'required',
            'benefits_id' => 'required',
        ]);
        $lips_benefit->update($request->all());
        return response()->json($lips_benefit);
    }

    public function delete($id) {
        $lips_benefit = Lips_benefit::findOrFail($id);
        $lips_benefit->delete();
        return response()->json(null, 204);
    }

}


    

