<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Benefit;


class BenefitController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */

    public function getAll(){
        $benefits = Benefit::all();
        return response()->json($benefits);
    }

    public function getOne($id){

        $benefit = Benefit::find($id);
        return response()->json($benefit);
    }

    public function save(Request $request) {
        $this->validate($request, [
            'benefit_list' => 'required'
        ]);
        $benefit = Benefit::create($request->all());
        return response()->json($benefit, 201);
    }

    public function update(Request $request, $id) {
        $benefit = Benefit::findOrFail($id);
    
        $this->validate($request, [
            'benefit_list' => 'required'
        ]);
        $benefit->update($request->all());
        return response()->json($benefit);
    }

    public function delete($id) {
        $benefit = Benefit::findOrFail($id);
        $benefit->delete();
        return response()->json(null, 204);
    }
}
