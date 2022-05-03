@extends('layouts.admin.home')
@section('content')
<div class="col-md-10">
    <div id="content">
        <div class="header" style="text-align:center">
            <h1 >Thêm tập mới</h1>
        </div>
        <form action="{{route('validation_add_episode',$film->id)}}" method="POST" enctype="multipart/form-data">
            @csrf
            @csrf
            <div class="form-group title">
                <label for="title">Tên Phim:</label>
                <input type="text" class=" form-control" name="title" value="{{$film->name}}">
                @error('title')
                <small class="form-text text-danger">{{$message}}</small> 
                @enderror
            </div>
            <div class="form-group title">
                <label for="update_episode">Số tập cập nhật đến hiện tại:</label>
                <input type="number" value="{{$item=$film->update_episode!=NULL ?$film->update_episode:0 }}" class=" form-control" id="update_episode" name="update_episode">
                @error('update_episode')
                <small class="form-text text-danger">{{$message}}</small> 
                @enderror
            </div>
            <div class="form-group title">
                <label for="episode">Tập số:</label>
                <input type="number" value="{{$film->update_episode+1}}" class=" form-control" name="episode" placeholder="Tập số">
                @error('episode')
                <small class="form-text text-danger">{{$message}}</small> 
                @enderror
            </div>
            <div class="form-group title">
                <label for="link">Tên số:</label>
                <input type="text" class=" form-control" name="link" placeholder="link tập phim">
                @error('link')
                <small class="form-text text-danger">{{$message}}</small> 
                @enderror
            </div>
            <input type="submit" class="btn btn-warning" value="Thêm tập mới">
        </form>
    </div>
</div> 
@endsection