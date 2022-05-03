<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class tbl_translate extends Model
{
    //
    function film_serie(){
        return  $this->belongsTo('App\tbl_film_serie');
      }
}
