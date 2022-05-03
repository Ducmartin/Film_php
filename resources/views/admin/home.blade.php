@extends('layouts.admin.home')
@section('content')
    <div class="col-md-10">
        <div id="content">
            <div class="header row">
                <h1>Danh sách phim bộ đang cập nhật cập nhật</h1>
                <form action="{{ route('validation_searchfilm', $searchfilm = '') }}" method="POST"
                    enctype="multipart/form-data">
                    @csrf
                    <input type="text" style="    position: absolute; right: 10%;" name="searchfilm"
                        placeholder="Tìm kiếm tên phim">
                    <input type="submit" style="    position: absolute;right: 3%;" class="btn btn-primary" value="Tìm kiếm">
                </form>

            </div>
            <form action="{{ route('validation_film_need_update') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <label for="dayofweek">Các phim cần cập nhật hôm nay:</label>
                <select style="width: 220px;padding: 5px;margin: 25px;border-radius:10px" name="dayofweek" id="dayofweek"
                    class="form">
                    <option value="">Cập nhật theo thứ</option>
                    <option value="1">Các ngày trong tuần</option>
                    <option value="2">Thứ 2</option>
                    <option value="3">Thứ 3</option>
                    <option value="4">Thứ 4</option>
                    <option value="5">Thứ 5</option>
                    <option value="6">Thứ 6</option>
                    <option value="7">Thứ 7</option>
                    <option value="8">Chủ nhật</option>
                </select>
                <input type="submit" class="btn btn-primary" style="border-radius:10px" value="Hiển thị">
            </form>
            <div class="list-film">
                <div class="box" style="height: 50px; background: #2973b3;">
                    <p style="color:#fff;padding:13px;text-align:center">Tổng số phim
                        bộ:{{ $t = $total_film == null ? '' : $total_film }}</p>
                </div>
                <div class="row">
                    @foreach ($total_kind_films as $item)
                        <div class="box" style="height: 50px; background: #2973b3;margin:1%;width:23%">
                            <a href="" style="color:#fff;padding:13px;text-align:center">Tổng số phim
                                {{ $item->kind_film }}:{{ $t = $item->count_film == null ? '0' : $item->count_film }}</a>
                        </div>
                    @endforeach
                </div>
               <div class="row">
                @foreach ($total_film_countries as $item)
                <div class="box" style="height: 50px; background: #2973b3;margin:1%;width:23%">
                    <a href="" style="color:yellow;padding:13px;text-align:center">Tổng số phim
                        {{ $item->name }}:{{ $t = $item->count_film == null ? '0' : $item->count_film }}</a>
                </div>
            @endforeach
               </div>
                <div class="box" style="height: 50px; background: #2973b3;margin-top:5px">
                    <p style="color:#fff;padding:13px;text-align:center">Tổng số lượt xem:{{$total_view}}</p>
                </div>
            </div>
        </div>
    </div>

@endsection
