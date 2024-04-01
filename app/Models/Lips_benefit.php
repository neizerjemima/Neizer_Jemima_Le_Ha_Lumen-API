<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Lips_benefit extends Model
{

    protected $fillable = ["lips_id", "benefits_id"];
    
    public function lips()
    {
        return $this->belongsTo(Lip::class, 'lips_id')->select(['id', 'name', 'brand', 'description', 'product_link','product_image']);
    }

   
    public function benefits()
    {
        return $this->belongsTo(Benefit::class, 'benefits_id')->select(['id', 'benefit_list']);
    }
    protected $hidden = ['lips_id', 'benefits_id', 'created_at', 'updated_at'];

    public function types()
    {
        return $this->belongsTo(Lip::class, 'lips_id')->with(['types']);
    }
}

