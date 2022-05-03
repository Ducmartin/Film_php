<?php

namespace App\Http\Controllers;

use App\tbl_country;
use App\tbl_film_episode;
use App\tbl_film_odd;
use App\tbl_film_serie;
use App\tbl_kind;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Swift;

class Admincontroller extends Controller
{
    //phim lẻ
    function film_odds_add()
    {
        $countries = tbl_country::all();
        $kinds = tbl_kind::all();
        return view('admin.add_new_film_odd', compact('kinds', 'countries'));
    }
    function film_odds_list()
    {

        $films = tbl_film_odd::paginate(20);
        return view('admin.list_film_odd', compact('films'));
    }
    //validation-film-odds
    function validation_film_odds(Request $request)
    {
        $request->validate(
            [
                'title' => ['required'],
                'intro' => ['required'],
                'rate' => ['required'],
                'kind_id' => ['required'],
                'country_id' => ['required'],
                'translate_id' => ['required'],
                'photo' => ['required'],
                'link' => ['required'],
            ],
            [
                'required' => 'Vui lòng điền thêm thông tin về :attribute',
            ],
            [
                'title' => 'tên của phim',
                'intro' => 'giới thiệu phim',
                'rate' => 'đánh giá về phim',
                'kind_id' => 'thể loại của phim',
                'country_id' => 'phim của quốc gia',
                'translate_id' => 'bản dịch',
                'photo' => 'ảnh đại diện của phim',
                'link' => 'link phim',
            ]
        );
        $data = $request->all();
        foreach ($data['kind_id'] as $key => $val) {
            $count = tbl_kind::where('slug', 'like', '%' . $val . '%')->first()->count_film;
            if ($count == null) {
                tbl_kind::where('slug', 'like', '%' . $val . '%')->update(
                    ['count_film' => 1]
                );
            } else {
                tbl_kind::where('slug', 'like', '%' . $val . '%')->update(
                    ['count_film' => $count + 1]
                );
            }
        }
        $kind_id = implode(',', $data['kind_id']);
        if ($request->hasFile('photo')) {
            $file_photo = $request->file('photo');
            $name_photo = $file_photo->getClientOriginalName();
            $file_photo->move('public/uploads/photo/', $name_photo);
            $photo = 'public/uploads/photo/' . $name_photo;
        }
        $count_film=tbl_country::where('id',$data['country_id'])->first();
        if($count_film->count_film==null){
            tbl_country::where('id',$data['country_id'])->update([
                'count_film'=>1,
               ]);
        }else{
            tbl_country::where('id',$data['country_id'])->update([
                'count_film'=>$count_film->count_film+1,
               ]);
        }
        
        tbl_film_odd::create([
            'name' => $data['title'],
            'slug' => Str::slug($data['title']),
            'intro' => $data['intro'],
            'rate' => $data['rate'],
            'total_rating' => '1',
            'kind_id' => $kind_id,
            'country_id' => $data['country_id'],
            'translate_id' => $data['translate_id'],
            'photo' => $photo,
            'link' => $data['link'],
        ]);
        return redirect('/film_odds/list')
            ->with('success', 'Đã thêm thành công 1 phim lẻ/phim chiếu rạp mới!');
    }
    function edit_film_odd($id){
        $film=tbl_film_odd::where('id',$id)->first();
        $kinds=tbl_kind::all();
        $countries=tbl_country::all();
        return view('admin.edit_film_odd',compact('id','film','kinds','countries'));
    }
    function edit_film_serie($id){
        $film=tbl_film_serie::where('id',$id)->first();
        $kinds=tbl_kind::all();
        $countries=tbl_country::all();
        return view('admin.edit_film_serie',compact('id','film','kinds','countries'));
    }
    function validation_edit_film_odds(Request $request,$id)
    {
        $request->validate(
            [
                'title' => ['required'],
                'intro' => ['required'],
                'rate' => ['required'],
                'kind_id' => ['required'],
                'country_id' => ['required'],
                'translate_id' => ['required'],
                'link' => ['required'],
            ],
            [
                'required' => 'Vui lòng điền thêm thông tin về :attribute',
            ],
            [
                'title' => 'tên của phim',
                'intro' => 'giới thiệu phim',
                'rate' => 'đánh giá về phim',
                'kind_id' => 'thể loại của phim',
                'country_id' => 'phim của quốc gia',
                'translate_id' => 'bản dịch',
                'link' => 'link phim',
            ]
        );
        $data = $request->all();
        foreach ($data['kind_id'] as $key => $val) {
            $count = tbl_kind::where('slug', 'like', '%' . $val . '%')->first()->count_film;
            if ($count == null) {
                tbl_kind::where('slug', 'like', '%' . $val . '%')->update(
                    ['count_film' => 1]
                );
            } else {
                tbl_kind::where('slug', 'like', '%' . $val . '%')->update(
                    ['count_film' => $count + 1]
                );
            }
        }
        $kind_id = implode(',', $data['kind_id']);
       
        tbl_film_odd::where('id',$id)->update([
            'name' => $data['title'],
            'slug' => Str::slug($data['title']),
            'intro' => $data['intro'],
            'rate' => $data['rate'],
            'total_rating' => '1',
            'kind_id' => $kind_id,
            'country_id' => $data['country_id'],
            'translate_id' => $data['translate_id'],
            'link' => $data['link'],
        ]);
     return   redirect('/film_odds/list')->with('success', 'Đã chỉnh sửa thành công !!!');
    }
    function validation_film_series(Request $request)
    {
        $request->validate(
            [
                'title' => ['required'],
                'intro' => ['required'],
                'rate' => ['required'],
                'showtime' => ['required'],
                'kind_id' => ['required'],
                'country_id' => ['required'],
                'translate_id' => ['required'],
                'photo' => ['required'],
            ],
            [
                'required' => 'Vui lòng điền thêm thông tin về :attribute',
            ],
            [
                'showtime' => 'lịch chiếu',
                'title' => 'tên của phim',
                'intro' => 'giới thiệu phim',
                'rate' => 'đánh giá về phim',
                'kind_id' => 'thể loại của phim',
                'country_id' => 'phim của quốc gia',
                'translate_id' => 'bản dịch',
                'photo' => 'ảnh đại diện của phim',
            ]
        );
        $data = $request->all();
        foreach ($data['kind_id'] as $key => $val) {
            $count = tbl_kind::where('slug', 'like', '%' . $val . '%')->first()->count_film;
            if ($count == null) {
                tbl_kind::where('slug', 'like', '%' . $val . '%')->update(
                    ['count_film' => 1]
                );
            } else {
                tbl_kind::where('slug', 'like', '%' . $val . '%')->update(
                    ['count_film' => $count + 1]
                );
            }
        }
        $kind_id = implode(',', $data['kind_id']);
        if ($request->hasFile('photo') || $request->hasFile('bg_img')) {

            $file_photo = $request->file('photo');
            if(!empty($request->file('bg_img'))){
                 $file_bg_img = $request->file('bg_img')  ;
                   $name_bg_img = $file_bg_img->getClientOriginalName();
                     $file_bg_img->move('public/uploads/bg_img/', $name_bg_img);
                     $bg_img = 'public/uploads/bg_img/' . $name_bg_img;
            }else{
                $bg_img='Null';
            }
            $name_photo = $file_photo->getClientOriginalName();
            $file_photo->move('public/uploads/photo/', $name_photo);
            $photo = 'public/uploads/photo/' . $name_photo;
            
        }
        $count_film=tbl_country::where('id',$data['country_id'])->first();
        if($count_film->count_film==null){
            tbl_country::where('id',$data['country_id'])->update([
                'count_film'=>1,
               ]);
        }else{
            tbl_country::where('id',$data['country_id'])->update([
                'count_film'=>$count_film->count_film+1,
               ]);
        }
        tbl_film_serie::create([
            'name' => $data['title'],
            'slug' => Str::slug($data['title']),
            'intro' => $data['intro'],
            'rate' => $data['rate'],
            'total_rating' => 1,
            'kind_id' => $kind_id,
            'country_id' => $data['country_id'],
            'translate_id' => $data['translate_id'],
            'photo' => $photo,
            'bg_photo' => $bg_img,
            'showtime' => $data['showtime'],
        ]);
        return redirect('/film_series/list')->with('success', 'Đã thêm thành công 1 phim bộ!');
    }
    function validation_edit_film_series(Request $request,$id)
    {
        $request->validate(
            [
                'title' => ['required'],
                'intro' => ['required'],
                'rate' => ['required'],
                'showtime' => ['required'],
                'kind_id' => ['required'],
                'country_id' => ['required'],
                'translate_id' => ['required'],
            ],
            [
                'required' => 'Vui lòng điền thêm thông tin về :attribute',
            ],
            [
                'showtime' => 'lịch chiếu',
                'title' => 'tên của phim',
                'intro' => 'giới thiệu phim',
                'rate' => 'đánh giá về phim',
                'kind_id' => 'thể loại của phim',
                'country_id' => 'phim của quốc gia',
                'translate_id' => 'bản dịch',
            ]
        );
        $data = $request->all();
        foreach ($data['kind_id'] as $key => $val) {
            $count = tbl_kind::where('slug', 'like', '%' . $val . '%')->first()->count_film;
            if ($count == null) {
                tbl_kind::where('slug', 'like', '%' . $val . '%')->update(
                    ['count_film' => 1]
                );
            } else {
                tbl_kind::where('slug', 'like', '%' . $val . '%')->update(
                    ['count_film' => $count + 1]
                );
            }
        }
        $kind_id = implode(',', $data['kind_id']);
        if(!empty($data['end_episode'])){
            tbl_film_serie::where('id',$id)->update([
                'name' => $data['title'],
                'slug' => Str::slug($data['title']),
                'intro' => $data['intro'],
                'rate' => $data['rate'],
                'kind_id' => $kind_id,
                'country_id' => $data['country_id'],
                'translate_id' => $data['translate_id'],
                'showtime' => $data['showtime'],
                'end_episode'=>$data['end_episode']
            ]);
            return redirect('/film_series/list')->with('success', 'Đã chỉnh sửa thành công!');
        }else{
            tbl_film_serie::where('id',$id)->update([
                'name' => $data['title'],
                'slug' => Str::slug($data['title']),
                'intro' => $data['intro'],
                'rate' => $data['rate'],
                'kind_id' => $kind_id,
                'country_id' => $data['country_id'],
                'translate_id' => $data['translate_id'],
                'showtime' => $data['showtime'],
            ]);
            return redirect('/film_series/list')->with('success', 'Đã chỉnh sửa thành công!');
        }
   
        
        return redirect('/film_series/list')->with('success', 'Đã chỉnh sửa thành công!');
    }
    function validation_add_episode(Request $request, $film_id)
    {
        $request->validate(
            [
                'title' => ['required'],
                'episode' => ['required'],
                'link' => ['required']
            ],
            [
                'required' => 'Vui lòng điền thêm thông tin về :attribute',
            ],
            [
                'title' => 'tên phim',
                'episode' => 'tập phim số',
                'link' => 'link tập phim',
            ]
        );
      
    if(count(tbl_film_episode::where([['film_id',$film_id],['film_episode',$request->episode]])->get())==1){
        tbl_film_episode::where([['film_id',$film_id],['film_episode',$request->episode]])->update(
            [
                'link' => $request->link
            ]
        );
        return redirect()->route('film', $film_id)->with('success', 'Đã cập nhật thành công 1 tập phim bộ!');
    }else{
        tbl_film_episode::create(
            [
                'film_id' => $film_id,
                'film_episode' => $request->episode,
                'link' => $request->link
            ]
        );
        tbl_film_serie::where('id', $film_id)->update([
            'update_episode' => $request->episode,
        ]);
        return redirect()->route('film', $film_id)->with('success', 'Đã thêm thành công 1 tập phim bộ!');
    }
    }
    // phim bộ
    function film_series_add()
    {
        $countries = tbl_country::all();
        $kinds = tbl_kind::all();
        return view('admin.add_new_film_serie', compact('kinds', 'countries'));
    }
    function add_episode($film_id)
    {
        $film = tbl_film_serie::where('id', $film_id)->first();
        $update_episode = tbl_film_episode::where('id', $film_id)->orderby('film_episode', 'desc')->first();
        return view('admin.add_new_episode', compact('film', 'update_episode'));
    }
    function film_series_list()
    {
        $films = tbl_film_serie::paginate(20);
        return view('admin.list_film_serie', compact('films'));
    }
    function film($film_id)
    {
        $film = tbl_film_serie::where('id', $film_id)->first();
        $update_episode = tbl_film_episode::where('film_id', $film_id)->orderby('film_episode', 'desc')->first();
        return view('admin.film', compact('film', 'update_episode'));
    }
    function validation_searchfilm(Request $request)
    {
        $request->validate(
            [
                'searchfilm' => ['required'],
            ],
            [
                'required' => 'Vui lòng điền thêm thông tin về :attribute', 're'
            ],
            [
                'searchfilm' => 'tên phim cần tìm kiếm'
            ]
        );
        $searchname = $request->searchfilm;
        return redirect()->route('show_searchfilm', $searchname);
        // return redirect()->route('/film/{searchname}',$searchname);
    }
    function validation_film_need_update(Request $request)
    {
        $request->validate(
            [
                'dayofweek' => ['required'],
            ],
            [
                'required' => 'Vui chọn thêm thông tin về :attribute',
            ],
            [
                'dayofweek' => 'thứ trong tuấn'
            ]
        );
        $value = $request->dayofweek;
        return redirect()->route('show_update_film', $value);
    }
    function show_searchfilm($searchname)
    {
        $film_series = tbl_film_serie::where('name', 'like', '%' . $searchname . '%')->get();
        $film_odds = tbl_film_odd::where('name', 'like', '%' . $searchname . '%')->get();
        return view('admin.film', compact('film_series', 'film_odds'));
    }
    function show_update_film($value)
    {
        if($value==1){
            $value = "các ngày trong tuần";
        }else if ($value == 2) {
            $value = "thứ 2";
        } else if ($value == 3) {
            $value = "3";
        } else if ($value == 4) {
            $value = "4";
        } else if ($value == 5) {
            $value = "5";
        } else  if ($value == 6) {
            $value = "6";
        } else if ($value == 7) {
            $value = "7";
        } else  if ($value == 8) {
            $value = "chủ nhật";
        }
        $film_series = tbl_film_serie::where('showtime', 'like', '%' . $value . '%')->paginate(20);
        return view('admin.film', compact('film_series'));
    }
}
