@extends('layouts.admin.home')
@section('content')
<div class="col-md-10">
    <div id="content">
        <div class="row">
            @if (session('success'))
                <div class="alert alert-success col-md-12" style="text-align:center">
                    {{session('success')}}
                </div>
            @endif
        </div>
        <div class="header row">
            <h1>Danh sách phim bộ đang cập nhật cập nhật</h1>
            <form action="{{route('validation_searchfilm')}}" method="POST" enctype="multipart/form-data">
                @csrf
                <input type="text" style="    position: absolute; right: 10%;" name="searchfilm" placeholder="Tìm kiếm tên phim">
                <input type="submit" style="    position: absolute;right: 3%;" class="btn btn-primary" value="Tìm kiếm">
            </form>
        </div>
        <form action="{{route('validation_film_need_update')}}" method="POST" enctype="multipart/form-data">
           @csrf
           @csrf
            <label for="dayofweek">Các phim cần cập nhật hôm nay:</label>
            <select style="width: 220px;padding: 5px;margin: 25px;border-radius:10px" name="dayofweek" id="dayofweek" class="form">
              <option value="">Cập nhật theo thứ</option>
              <option value="1">các ngày trong tuần</option>
              <option value="2">Thứ 2</option>
              <option value="3">Thứ 3</option>
              <option value="4">Thứ 4</option>
              <option value="5">Thứ 5</option>
              <option value="6">Thứ 6</option>
              <option value="7">Thứ 7</option>
              <option value="8">Chủ nhật</option>
            </select>
            <input type="submit" class="btn btn-primary" style="border-radius:10px" value="Hiển thị" >
        </form>
        
        <div class="list-film">
            <table >
                <thead>
                    <tr>
                        <th>Stt</th>
                        <th class="film-photo">Ảnh</th>
                        <th style="width:370px">Tên phim</th>
                        <th>Lịch chiếu</th>
                        <th>Tổng số tập</th>
                        <th>Tác vụ</th>
                    </tr>
                </thead>
                <tbody>
                    @php
                     $t=0;    
                    @endphp
                    @foreach ($films as $film)
                        @php
                        $t++;    
                        @endphp
                        <tr>
                        <td>{{$t}}</td>
                        <td><a href=""><img style="height: 125px;width:100px" src="{{url($film->photo)}}" alt=""></a></td>
                        <td>{{$film->name}}</td>
                        <td>{{$film->showtime}}</td>
                        <td>{{$film->update_episode}}/{{$film->end_episode}}</td>
                        <td><a href="{{route('add_episode',$film->id)}}"><i class="fas fa-plus-square"></i></a><a href="{{route('edit_film_serie',$film->id)}}"><i class="fas fa-pen-square"></i></a>
                    </td>    
                    {{-- <a href=""><i class="far fa-edit"></i></a> --}}
                      </tr>
                    @endforeach
                   
                </tbody>
            </table>
            <div class="pagination" style="margin-left: 40%;">
                {{$films->links()}}
            </div>
        </div>
    </div>
</div>
@endsection