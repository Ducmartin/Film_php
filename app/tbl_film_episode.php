<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class tbl_film_episode extends Model
{
  //
  protected $fillable = [
    'film_id', 'film_episode', 'link'
  ];

}
