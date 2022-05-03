<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class tbl_film_odd extends Model
{
    //
    protected $fillable=[
        'name','intro','showtime','rate','kind_id','country_id','translate_id','photo','bg_photo'
        ,'link','view','slug','total_rating'
    ];
    function translate(){
        return  $this->belongsTo('App\tbl_translate');
      }
    function kind(){
    return $this->belongsTo('App\tbl_kind');
    }
    function country(){
        return $this->belongsTo('App\tbl_country');
    }
}
