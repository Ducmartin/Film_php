<?php
use Illuminate\Foundation\Auth\EmailVerificationRequest;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

Auth::routes(['verify'=>true,'auth'=>true]);
///login
route::middleware('auth')->group(function(){
    Route::get('/admin/dcmm/home', 'HomeController@index')->name('home')->middleware('verified');  
    Route::get('/film_odds/add', 'Admincontroller@film_odds_add')->name('film_odds.add');
    Route::get('/film_odds/list', 'Admincontroller@film_odds_list')->name('film_odds.list');
    //--------validation----------
    Route::post('/film_odds/validation', 'Admincontroller@validation_film_odds')->name('validation_film_odds');
    Route::post('/film_odds/validation_edit/{id}', 'Admincontroller@validation_edit_film_odds')->name('validation_edit_film_odds');
    Route::post('/film_series/validation', 'Admincontroller@validation_film_series')->name('validation_film_series');
    Route::post('/film_series/validation_edit/{id}', 'Admincontroller@validation_edit_film_series')->name('validation_edit_film_series');
    Route::post('/film_series_{film_id}/validation_add_episode', 'Admincontroller@validation_add_episode')->name('validation_add_episode');
    //chỉnh sủa
    Route::get('/film_odds/edit/{id}','Admincontroller@edit_film_odd')->name('edit_film_odd');
    Route::get('/film_series/edit/{id}','Admincontroller@edit_film_serie')->name('edit_film_serie');
    Route::get('/film_series/edit_/{id}','Admincontroller@edit_film_serie')->name('edit_film_serie');
    // phim bộ
    Route::get('/film_series/add', 'Admincontroller@film_series_add')->name('film_series.add');
    Route::get('/film_series/list', 'Admincontroller@film_series_list')->name('film_series.list');
    // thêm tập mới cho phim bộ
    Route::get('/film_series_{film_id}/add_episode', 'Admincontroller@add_episode')->name('add_episode');
    Route::get('/film_series_{film_id}', 'Admincontroller@film')->name('film');
    //tìm kiếm phim
    Route::post('/film/validation_searchfilm', 'Admincontroller@validation_searchfilm')->name('validation_searchfilm');
    Route::GET('film/{searchname}', 'Admincontroller@show_searchfilm')->name('show_searchfilm');
    Route::post('film/validation_film_need_update', 'Admincontroller@validation_film_need_update')->name('validation_film_need_update');
    Route::get('/film/show_update_film/option={value}', 'Admincontroller@show_update_film')->name('show_update_film');
});
// route::middleware()->group(function(){
//client--------------------------------------------------------------
Route::get('/', 'Clientcontroller@home')->name('home_client');
route::get('/phim-le', 'Clientcontroller@film_odd')->name('film_odd');
route::get('/phim-bo', 'Clientcontroller@film_serie')->name('film_serie');
route::get('/phim-chieu-rap', 'Clientcontroller@movie_theater')->name('movie_theater');
route::get('/quoc-gia-{slug}', 'Clientcontroller@country')->name('country');
route::get('/the-loai-{kind}', 'Clientcontroller@kind_film')->name('kind_film');
// Route::get('/the-loai-phim-{kind_film}','Clientcontroller@kind_film')->name('kind_film');
Route::get('/{name}', 'Clientcontroller@intro')->name('intro_film');
Route::get('/xem-phim-{name}/tap-{id}', 'Clientcontroller@detail')->name('detail');
Route::get('/search/{search}/', 'Clientcontroller@search_film_client')->name('search_film_client');
//validation client
Route::Post('/insert-rating', 'Clientcontroller@rating')->name('rating');
Route::Post('/validation_search_film', 'Clientcontroller@validation_search_film')->name('validation_search_film');

// });
