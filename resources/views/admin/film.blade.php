@extends('layouts.admin.home')
@section('content')
    <div class="col-md-10">
        <div id="content">
            <div class="row">
                @if (session('success'))
                    <div class="alert alert-success col-md-12" style="text-align:center">
                        {{ session('success') }}
                    </div>
                @endif
            </div>
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
                @csrf
                <label for="dayofweek">Các phim cần cập nhật hôm nay:</label>
                <select style="width: 220px;padding: 5px;margin: 25px;border-radius:10px" name="dayofweek" id="dayofweek"
                    class="form">
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
                <input type="submit" class="btn btn-primary" style="border-radius:10px" value="Hiển thị">
            </form>


            <div class="list-film">
                @if (empty($film))
                    @if (count($film_series) == 0 && count($film_odds) == 0)
                        <h1 style="color:#fff;text-align:center;font-size:30px;margin-top:10%">Không tìm thấy phim bạn yêu
                            cầu
                        </h1>
                    @else @if (!empty($film_series))
                            <table>
                                <thead>
                                    <tr>
                                        <th>Stt</th>
                                        <th class="film-photo">Ảnh</th>
                                        <th style="width:370px">Tên phim</th>
                                        <th>Lịch chiếu</th>
                                        <th>Cập nhật đến tập</th>
                                        <th>Tác vụ</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $t = 0;
                                    @endphp
                                    @foreach ($film_series as $item)
                                        @php
                                            $t++;
                                        @endphp
                                        <tr>
                                            <td>{{ $t }}</td>
                                            <td><a href=""><img style="height: 125px;width:100px"
                                                        src="{{ url($item->photo) }}" alt=""></a></td>
                                            <td>{{ $item->name }}</td>
                                            <td>{{ $item->showtime }}</td>
                                            <td>{{ $item->update_episode }}/{{ $item->end_episode }}</td>
                                            <td><a href="{{ route('add_episode', $item->id) }}"><i
                                                        class="fas fa-plus-square"></i></a><a href=""><i
                                                        class="fas fa-pen-square"></i></a></td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <div class="row">
                                <div class="pagination" style="position:absolute;left:45%;margin-top:10px">
                                    @if (empty($film_odds))
                                        {{ $film_series->links() }}

                                    @endif
                                </div>
                            </div>
                        @endif
                        @if (!empty($film_odds))
                            <table>
                                <thead>
                                    <tr>
                                        <th>Stt</th>
                                        <th class="film-photo">Ảnh</th>
                                        <th style="width:370px">Tên phim</th>
                                        <th>Lượt xem</th>
                                        <th>rate</th>
                                        <th>Tác vụ</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $t = 0;
                                    @endphp
                                    @foreach ($film_odds as $film)
                                        @php
                                            $t++;
                                        @endphp
                                        <tr>
                                            <td>1</td>
                                            <td><a href=""><img style="height: 125px;width:100px"
                                                        src="{{ url($film->photo) }}" alt=""></a></td>
                                            <td>{{ $film->name }}</td>
                                            <td>{{ $film->view }}</td>
                                            <td>{{ $film->rate }}</td>
                                            <td><a href=""><i class="fas fa-pen-square"></i></a></td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        @endif

                    @endif
                    @else
                    <table>
                        <thead>
                            <tr>
                                <th>Stt</th>
                                <th class="film-photo">Ảnh</th>
                                <th style="width:370px">Tên phim</th>
                                <th>Lịch chiếu</th>
                                <th>Cập nhật đến tập</th>
                                <th>Tác vụ</th>
                            </tr>
                        </thead>
                        <tbody>
                         
                                <tr>
                                    <td>1</td>
                                    <td><a href=""><img style="height: 125px;width:100px"
                                                src="{{ url($film->photo) }}" alt=""></a></td>
                                    <td>{{ $film->name }}</td>
                                    <td>{{ $film->showtime }}</td>
                                    <td>{{ $film->update_episode }}/{{ $film->end_episode }}</td>
                                    <td><a href="{{ route('add_episode', $film->id) }}"><i
                                                class="fas fa-plus-square"></i></a>
                                                <a href="{{route('edit_film_serie',$film->id)}}"><i
                                                class="fas fa-pen-square"></i></a></td>
                                </tr>
                         
                        </tbody>
                    </table>

                    @endif

            </div>
        </div>
    </div>
@endsection
