<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Lip extends Model
{
    protected $fillable = ["name", "brand", "description", "product_link", "product_image", "types_id"];

 
    protected $hidden = ['types_id'];
    public function types()
    {
        return $this->belongsTo(Type::class, 'types_id')->select(['id', 'title']);
    }  

    public function benefits()
    {
        return $this->hasMany(Lips_benefit::class, 'lips_id')->with(['benefits']);
    }
    
}
