@extends('layouts.admin.home')
@section('content')
<div class="col-md-10">
    <div id="content">
        <div class="row">
            @if(session('success'))
            <div class="alert alert-success col-md-12"style="text-align:center">
                {{session('success')}}
            </div>
            @endif
        </div>
        <div class="header row" style="margin-bottom:60px">
            <h1>Danh sách phim mới cập nhật</h1>
            <form action="{{route('validation_searchfilm',$searchfilm='')}}" method="POST" enctype="multipart/form-data">
                @csrf
                <input type="text" style="    position: absolute; right: 10%;" name="searchfilm" placeholder="Tìm kiếm tên phim">
                <input type="submit" style="    position: absolute;right: 3%;" class="btn btn-primary" value="Tìm kiếm">
            </form>
        </div>
        <div class="list-film">
            <table >
                <thead>
                    <tr>
                        <th>Stt</th>
                        <th class="film-photo">Ảnh</th>
                        <th style="width:370px">Tên phim</th>
                        <th>Số lượt xem</th>
                        <th>số lượt đánh giá</th>
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
                       <td>{{$film->view}}</td>
                       <td>{{$film->rate}}</td>
                       <td><a href="{{route('edit_film_odd',$film->id)}}"><i class="fas fa-pen-square"></i></a></td>
                     </tr>
                   @endforeach
                  
                </tbody>
            </table>
        </div>
        <div class="pagination" style="margin-left: 40%;">
            {{$films->links()}}
        </div>
        
    </div>
</div>
@endsection