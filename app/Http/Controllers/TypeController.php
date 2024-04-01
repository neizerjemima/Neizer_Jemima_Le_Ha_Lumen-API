<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Type;


class TypeController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */

    public function getAll(){
        $types = Type::all();
        return response()->json($types);
    }

    public function getOne($id){

        $type = Type::find($id);
        return response()->json($type);
    }

    public function save(Request $request) {
        $this->validate($request, [
            'title' => 'required'
        ]);
        $lip = Type::create($request->all());
        return response()->json($type, 201);
    }

    public function update(Request $request, $id) {
        $type = Type::findOrFail($id);
    
        $this->validate($request, [
            'title' => 'required'
        ]);
        $type->update($request->all());
        return response()->json($type);
    }

    public function delete($id) {
        $type = Type::findOrFail($id);
        $type->delete();
        return response()->json(null, 204);
    }
}
