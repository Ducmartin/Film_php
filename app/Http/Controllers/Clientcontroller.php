<?php

namespace App\Http\Controllers;

use App\tbl_country;
use App\tbl_film_episode;
use App\tbl_film_odd;
use App\tbl_film_serie;
use App\tbl_kind;
use App\tbl_rating;

use Illuminate\Support\Str;
use Illuminate\Http\Request;

class Clientcontroller extends Controller
{
    function intro($name)
    {
        if (!empty($film = tbl_film_odd::where('slug', 'like', '%' . $name . '%')->first())) {
            $kinds = tbl_kind::all();
            return view('client.intro', compact('film', 'name', 'kinds'));
        }else if (!empty($film = tbl_film_serie::where('slug', 'like', '%' . $name . '%')->first())) {
            $kinds = tbl_kind::all();
            return view('client.intro', compact('film', 'name', 'kinds'));
        }else {
            $fail='Không tìm thấy trang bạn yêu cầu!!!';
              return view('client.intro',compact('fail'));
        }
      
    }
    function detail($name, $episode)
    {
        $film_slide_odds = tbl_film_odd::limit(4)->get();
        $film_slide_series = tbl_film_serie::limit(4)->get();
        $film_serie_hot = tbl_film_serie::orderby('view','DESC')->limit(10)->get();
        $film_odd_hot = tbl_film_odd::orderby('view', 'DESC')->limit(10)->get();
        if ($episode == 'full') {
            $film = tbl_film_odd::where('slug', 'like', '%' . $name . '%')->first();
            tbl_film_odd::where('slug', 'like', '%' . $name . '%')->update([
                'view'=>$film->view+1,
            ]);
            $video = tbl_film_odd::where('slug', 'like', '%' . $name . '%')->first();
            $name=tbl_film_odd::where('slug', 'like', '%' . $name . '%')->first()->name;
            return view('client.detail', compact('name', 'episode', 'film_slide_odds', 'film_slide_series', 'video', 'film_odd_hot', 'film_serie_hot'));
        } else {
            $film = tbl_film_serie::where('slug', 'like', '%' . $name . '%')->first();
            tbl_film_serie::where('slug', 'like', '%' . $name . '%')->update([
                'view'=>$film->view+1,
            ]);
            $name = tbl_film_serie::where('slug', 'like', '%' . $name . '%')->first()->name;
            $film_episode = tbl_film_episode::where('film_id', $film->id)->orderby('film_episode', 'ASC')->get();
            $video = tbl_film_episode::where([['film_id', $film->id], ['film_episode', $episode]])->first();
            return view('client.detail', compact('name', 'episode', 'film_slide_odds', 'film_slide_series', 'film_episode', 'video', 'film_odd_hot', 'film_serie_hot'));
        }
    }
    function validation_search_film(Request $request)
    {
        $request->validate([
            'search' => ['required'],
        ], [
            'required' => 'nhập tên :attribute cần tìm kiếm'
        ], [
            'search' => 'phim'
        ]);
        $name = Str::slug($request->search);
        return redirect()->route('search_film_client', $name);
    }
    function search_film_client($name)
    {
        $film_odds = tbl_film_odd::where('slug', 'like', '%' . $name . '%')->paginate(20);
        $film_series = tbl_film_serie::where('slug', 'like', '%' . $name . '%')->paginate(20);
        if (count($film_series) == 0 && count($film_odds) == 0) {
            $fail = 'Không tìm thấy phim nào';
            return view('client.film', compact('film_odds', 'film_series', 'fail'));
        } else {
            return view('client.film', compact('film_odds', 'film_series'));
        }
    }
    function home()
    {
        $film_slide_odds = tbl_film_odd::orderby('view','DESC')->limit(8)->get();
        $film_slide_series = tbl_film_serie::orderby('view','DESC')->limit(8)->get();
        $film_new_serie_2 = tbl_film_serie::orderby('view','DESC')->limit(2)->offset(3)->get();
        $film_new_serie_4 = tbl_film_serie::orderby('view','DESC')->limit(20)->offset(8)->get();
        $film_odds=tbl_film_odd::orderby('view','DESC')->limit(20)->get();
        return view('client.home', compact('film_slide_odds', 'film_new_serie_2', 'film_new_serie_4','film_odds','film_slide_series'));
    }
    function rating(Request $request)
    {
        $data = $request->all();
        $film = tbl_rating::where([['film_id', $data['film_id']], ['kind_id', $data['kind_id']]])->first();
        if (empty($film)) {
            tbl_rating::create([
                'film_id' => $data['film_id'],
                'rating' => $data['rate'],
                'kind_id' => $data['kind_id'],
                'total_rating' => 2,
            ]);
        } else {
            tbl_rating::where([['film_id', $data['film_id']], ['kind_id', $data['kind_id']]])->update([
                'rating' => ROUND(($film->total_rating * $film->rating + $data['rate']) / ($film->total_rating + 1), 1),
                'total_rating' => $film->total_rating + 1,
            ]);
            tbl_film_odd::where([['id', $data['film_id']], ['kind_id', $data['kind_id']]])->update([
                'rate' => ROUND(($film->total_rating * $film->rating + $data['rate']) / ($film->total_rating + 1), 1),
                'total_rating' => $film->total_rating + 1,
            ]);
            tbl_film_serie::where([['id', $data['film_id']], ['kind_id', $data['kind_id']]])->update([
                'rate' => ROUND(($film->total_rating * $film->rating + $data['rate']) / ($film->total_rating + 1), 1),
                'total_rating' => $film->total_rating + 1,
            ]);
        }
        return redirect()->back()->with('rating_success', 'Bạn đã đánh giá thành công!');
    }
    function film_odd()
    {
        $film_odds = tbl_film_odd::where('kind_id', 'like', '%le%')->paginate(20);
        $kind_film=tbl_kind::where('slug','like', '%le%')->first();
        if (count($film_odds) == 0) {
            $fail = 'Không tìm thấy phim nào';
            return view('client.film', compact('film_odds', 'fail','kind_film'));
        } else {
            $fail = '';
            return view('client.film', compact('film_odds','kind_film'));
        }
    }
    function movie_theater()
    {
        $film_odds = tbl_film_odd::where('kind_id', 'like', '%chieu-rap%')->paginate(20);
        $kind_film=tbl_kind::where('slug','like', '%chieu-rap%')->first();
        if (count($film_odds) == 0) {
            $fail = 'Không tìm thấy phim nào';
            return view('client.film', compact('film_odds', 'fail','kind_film'));
        } else {
            return view('client.film', compact('film_odds','kind_film'));
        }
    }
    function country($link)
    {
        $country_id = tbl_country::where('slug', 'like', '%'.$link. '%')->first()->id;
        $film_series = tbl_film_serie::where('country_id', $country_id)->paginate(20);
        $film_odds = tbl_film_odd::where('country_id', $country_id)->paginate(20);
        $kind_film=tbl_country::where('id',$country_id)->first();
        if (count($film_odds) == 0 && count( $film_series) == 0) {
            $fail = 'Không tìm thấy phim nào';
            return view('client.film', compact('film_odds', 'film_series', 'fail','kind_film'));
        } else {
            return view('client.film', compact('film_odds', 'film_series','kind_film'));
        }
    }
    function film_serie()
    {
        $film_series = tbl_film_serie::paginate(20);
        $kind_film=tbl_kind::where('slug','like', '%bo%')->first();
        if (count($film_series) == 0) {
            $fail = 'Không tìm thấy phim nào';
            return view('client.film', compact('film_series', 'fail','kind_film'));
        } else {
            return view('client.film', compact('film_series','kind_film'));
        }
    }
    function kind_film($slug)
    {
        $film_odds = tbl_film_odd::where('kind_id', 'like', '%'. $slug .'%')->paginate(20);
        $film_series = tbl_film_serie::where('kind_id', 'like', '%'.$slug.'%')->paginate(20);
        $kind_film=tbl_kind::where('slug','like', '%'. $slug .'%')->first();
        if (count($film_odds) == 0 && count($film_series) == 0) {
            $fail = 'Không tìm thấy phim nào';
            return view('client.film', compact('film_odds', 'film_series', 'fail','kind_film'));
        } else {
            return view('client.film', compact('film_odds', 'film_series','kind_film'));
        }
    }
}
