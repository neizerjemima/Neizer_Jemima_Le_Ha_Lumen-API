<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Lip;


class LipController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function getAll() {
        $lips = Lip::with('types', 'benefits')->get();
        return response()->json($lips);
    }
    
    public function getOne($id) {
        $lip = Lip::with('types', 'benefits')->find($id);
        return response()->json($lip);
    }
    

    public function save(Request $request) {
        $this->validate($request, [
            'name' => 'required',
            'brand' => 'required',
            'description' => 'required',
            'product_link' => 'required',
            'product_image' => 'required',
            'types_id' => 'required|exists:types,id'
        ]);
        $lip = Lip::create($request->all());
        return response()->json($lip, 201);
    }

    public function update(Request $request, $id) {
        $lip = Lip::findOrFail($id);
    
        $this->validate($request, [
            'name' => 'required',
            'brand' => 'required',
            'description' => 'required',
            'product_link' => 'required',
            'product_image' => 'required',
            'types_id' => 'required'
        ]);
        $lip->update($request->all());
        return response()->json($lip);
    }

    public function delete($id) {
        $lip = Lip::findOrFail($id);
        $lip->delete();
        return response()->json(null, 204);
    }

}


    

