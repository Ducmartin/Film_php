@extends('layouts.client.home')
@section('content')
    <div class="content-wp">
        {{-- <div class="content">
        <div class="banner">
            <a href="http://affiliate.w88c1.com/Track.aspx?affiliateid=17440" target="_blank">
                <img style="width:100%" src="https://ff.imacdn.com/img/w88-980x100.jpg"></a>
        </div>
    </div> --}}
        @if (!empty($fail))
            <h1 class="text-danger" style="margin:0px;text-align:center;padding:30px">{{ $fail }}</h1>
        @else
            <div class="intro_film" style=" background-image: linear-gradient(
                3600deg,#081b27,rgba(8,27,39,.8)),url({{ $film->bg_photo }})">
                <div class="content">
                    <div class="row">
                        <div class="col-md-5 col-sm-12">
                            <img  src="{{ url($film->photo) }}" alt="" title="{{ $film->name }}">
                        </div>
                        <div class="col-md-7 col-sm-12">
                            <div class="header-content-block">
                                <h1 class="header-title">Chỉ Là Quan Hệ Hôn Nhân Vietsub, Once We Get Married (2021)</h1>
                                <ul class="list-inline" id="rating" style="    padding-left: 10px;">
                                    @for ($count = 1; $count <= 10; $count++)
                                        @php
                                            $rate = ceil($film->rate);
                                            if ($count <= $rate) {
                                                $color = 'color:orange';
                                            } else {
                                                $color = 'color:#ccc';
                                            }
                                        @endphp
                                        <li title="{{ $count }}" id="{{ $count }}"
                                            data-index="{{ $count }}" class="rating"
                                            data-film-id="{{ $film->id }}" data-rating="{{ $film->rate }}"
                                            data-kind-id="{{ $film->kind_id }}"
                                            style="cursor: pointer;font-size:30px;margin:0px;padding:0px;{{ $color }}">
                                            &#9733
                                        </li>


                                    @endfor

                                    <form action="{{ route('rating') }}" method="POST" style="display:none"
                                        id="form-rating">
                                        @csrf
                                        <div class="form-group">
                                            <input name="rate" type="hidden" value="{{ $film->rate }}">
                                            <input name="film_id" type="hidden" value="{{ $film->id }}">
                                            <input name="kind_id" type="hidden" value="{{ $film->kind_id }}">
                                            {{-- <input type="submit" name="submit"> --}}
                                        </div>

                                    </form>
                                </ul>

                                <script type="text/javascript">
                                    $(document).on('mouseenter', '.rating', function() {
                                        var index = $(this).data('index');
                                        for (var i = 1; i <= 10; i++) {
                                            if (i <= index) {
                                                $('#' + i).css('color', 'orange');
                                            } else {
                                                $('#' + i).css('color', '#ccc');
                                            }
                                        }
                                    })
                                    $(document).on('mouseleave', '.rating', function() {
                                        var rate = $('input[name="rate"]').val();
                                        for (var i = 1; i <= 10; i++) {
                                            if (i <= rate) {
                                                $('#' + i).css('color', 'orange');
                                            } else {
                                                $('#' + i).css('color', '#ccc');
                                            }
                                        }
                                    })
                                    $(document).on('click', '.rating', function() {
                                        var rate = $(this).data('index');
                                        $('input[name="rate"]').val(rate);
                                        for (var i = 1; i <= 10; i++) {
                                            if (i <= rate) {
                                                $('#' + i).css('color', 'orange');
                                            } else {
                                                $('#' + i).css('color', '#ccc');
                                            }
                                        }

                                        $("form#form-rating").submit();
                                        $("#vote-desc").text('Bạn đã đánh giá thành công');
                                    });
                                </script>
                                <p style="margin-top:20px;color: yellowgreen;padding-left: 10px;" id="vote-desc">

                                    @if (session('rating_success'))
                                        {{ session('rating_success') }}
                                    @else
                                        Đánh giá phim
                                    @endif
                                </p>

                                <div id="div_average"
                                    style="line-height: 16px; margin-top:25px; margin-bottom:25px;padding-left: 10px;">
                                    <span id="hint"></span> (<span class="average" id="average"
                                        itemprop="ratingValue">
                                        {{ $film->rate }}</span>&nbsp;điểm /&nbsp; <span id="rate_count"
                                        itemprop="ratingCount">{{ $film->total_rating }}</span> &nbsp;lượt)
                                </div>
                                <div class="info-block">
                                    @php
                                        $film->kind_id = explode(',', $film->kind_id);
                                    @endphp
                                    @foreach ($film->kind_id as $key => $val)
                                        @foreach ($kinds as $kind)
                                            @if ($kind->slug == $val && $key == 0)
                                                <a class="kind-film" style="padding-left: 10px;"
                                                    href="{{ route('kind_film', $kind->slug) }}"><i style="color:orange"
                                                        class="fas fa-tags"></i>Phim {{ $kind->kind_film }}</a>
                                            @endif
                                        @endforeach
                                    @endforeach
                                    <a href="" style="margin-left:50px"><i style="color: orange;"
                                            class="far fa-clock"></i>{{ date_format($film->created_at, 'd-m-Y') }}</a>
                                </div>

                                <div class="header-info-block" style="margin:10px 10px">
                                    <div class="header-info-item">
                                        <a href="#" class="button_trailer" style="color: #fff;
                                        background-color: #3898ec!important;
                                        padding: 10px 10px;
                                        border-radius: 10px;
                                        margin-right:15px ;">Trailer</a>
                                        <a style=" color: #fff;
                                        background-color: #e46466!important;
                                        padding: 10px 10px;
                                        border-radius: 10px;"
                                            href="{{ route('detail', [$name, ($episode = empty($film->link) ? 1 : 'full')]) }}"
                                            title="{{ $film->name }}" class="button_xemphim ">Xem phim</a>
                                    </div>
                                </div>
                                <div class="header-short-description">
                                    <div>Trạng thái:
                                        {{ $episode = empty($film->update_episode) ? 'Full' : 'Tập ' . $film->update_episode }}
                                        VietSub</div>
                                    <div>Tổng số tập: {{ $film->end_episode }}</div>
                                    <div>Quốc gia: <a style="color:orange"
                                            href="{{ route('country', Str::slug($film->country->name)) }}">{{ $film->country->name }}</a>
                                    </div>
                                    <div>Thể loại:
                                        @foreach ($film->kind_id as $key => $val)
                                            @foreach ($kinds as $kind)
                                                @if ($kind->slug == $val)
                                                    <a href="{{ route('kind_film', $kind->slug) }}"
                                                        style="color:orange">Phim {{ $kind->kind_film }},</a>
                                                @endif
                                            @endforeach
                                        @endforeach

                                    </div>
                                    <div
                                        style="display: inline-block;background: #008eb9;padding: 2px 10px;font-size: 20px;">
                                        {{ $showtime = empty($film->showtime) ? 'Cập nhật các phim mới nhất' : $film->showtime }}
                                        trên SubPhimnhanh.net</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <h1 style="margin-top:60px;text-align:center;font-size:40px;color:orange">{{ $film->name }}</h1>
                </div>
            </div>
            <div class="content-descript" style="color:orange;">
                {!! $film->intro !!}
            </div>
        @endif
    </div>
@endsection
