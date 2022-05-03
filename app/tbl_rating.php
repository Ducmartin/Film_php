<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class tbl_rating extends Model
{
    //
    protected $fillable=[
        'film_id','rating','total_rating','kind_id'
    ];
}
