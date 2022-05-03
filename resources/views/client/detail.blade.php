@extends('layouts.client.home')
@section('content')

    <div class="content-wp">

        <div class="content">
            <div class="banner">
                <!-- <a href="http://affiliate.w88c1.com/Track.aspx?affiliateid=17440" target="_blank">
                    <img style="width:100%" src="https://ff.imacdn.com/img/w88-980x100.jpg"></a> -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <h1 style="color:gray;font-size:20px">{{ $name }}</h1>
                </div>
                <div class="col-lg-8 col-sm-12">
                    <div class="video">
                        <style>
                            #iframe-player,
                            .embed-responsive-item {
                                width: 100%;
                                height: 100%;
                            }

                        </style>
                       
                        {{-- @if (!empty($video->link))
                            {!! $video->link !!}
                        @else
                            <p style="color:#fff;text-align:center">Link phim đang bị lỗi vua lòng quay lại sau</p>
                        @endif --}}

                        {{-- <div class="fb-like" data-href="https://subphimnhanh.net" data-width="30px" data-layout="standard" data-action="like" data-size="small" data-share="true"></div> --}}
                    </div>
                    <div class="google-search">
                        <p>Cú pháp tìm kiếm phim nhanh nhất trên Google: Tên phim + subphimnhanh </p><br>
                        <p> Do thiếu hụt kinh phí duy trì máy chủ + dịch thuật nên vài quảng cáo nhảy trang sẽ xuất hiện có
                            thể gây khó chịu, mong các bạn thông cảm!</p>
                    </div>
                    <div class="episodes-list">
                        <h4>CHỌN TẬP PHIM</h4>
                        <div class="episodes">
                            @if ($episode != 'full')
                                @foreach ($film_episode as $item)
                                    <a title="{{ $name }}"
                                        href="{{ route('detail', [Str::slug($name), $item->film_episode]) }}"
                                        class="button-2 {{ $active = $item->film_episode == $episode ? 'active' : '' }}">Tập
                                        {{ $item->film_episode }}</a>
                                @endforeach
                            @else
                                <a title="{{ $name }}" href="{{ route('detail', [Str::slug($name), 'full']) }}"
                                    class="button-2 active">Full</a>
                            @endif

                        </div>
                    </div>
                    <div class="warning">
                        <p style="color:#fff">CẢNH BÁO: Không bấm vào các đường link lạ ở khu vực bình luận. Việc truy cập
                            vào các liên kết lạ ngoài SubNhanh.Net có thể khiến bạn bị hack tài khoản Facebook.</p>
                    </div>
                    <div class="comment">
                        <h4>BÌNH LUẬN VỀ PHIM:</h4>
                        <div class="plugin-comment">
                            <div class="fb-comments" data-href="https://subphimnhanh.net" data-width="100%"
                                data-numposts="10"></div>
                        </div>

                    </div>
                    <div class="same-kind">
                        <h1>Có thể bạn muốn xem?</h1>
                    </div>
                    <div class="film-same-kind">
                        <div id="Carousel" class="carousel slide" data-ride="carousel">
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <div class="row">
                                        @foreach ($film_slide_series as $film_serie)
                                            <div class="col-md-3 col-sm-6 line">
                                                <a href="{{ route('intro_film', Str::slug($film_serie->name)) }}">
                                                    <img title="{{ $film_serie->name }}" class="tray-item-thumbnail"
                                                        src="{{ url($film_serie->photo) }}">
                                                </a>
                                                <a class="film"
                                                    href="">{{ Str::limit($film_serie->name, '25') }}</a>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="row">
                                        @foreach ($film_slide_odds as $film_serie)
                                            <div class="col-md-3 col-sm-12 line">
                                                <a href="{{ route('intro_film', Str::slug($film_serie->name)) }}">
                                                    <img title="{{ $film_serie->name }}" class="tray-item-thumbnail"
                                                        src="{{ url($film_serie->photo) }}">
                                                </a>
                                                <a class="film"
                                                    href="">{{ Str::limit($film_serie->name, '25') }}</a>
                                            </div>
                                        @endforeach

                                    </div>
                                </div>
                            </div>

                            <!-- Left and right controls -->
                            <a class="left carousel-control" style="background: none;height: 30px;width: 30px;margin: auto;"
                                href="#Carousel" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"
                                    style="background:#000;border-radius: 10px;font-size: 20px;padding: 5px; position: absolute;left: 5px;"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control"
                                style="background: none;height: 20px;width: 20px; margin: auto;" href=" #Carousel"
                                data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"
                                    style="background:#000;border-radius: 10px;font-size: 20px;padding: 5px; position: absolute;right: 5px;"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 sidebar-detail-film">
                    <div class=" search">
                        <form action="{{ route('validation_search_film', $name = '') }}" method="POST"
                            enctype="multipart/form-data">
                            @csrf
                            @csrf
                            <input type="text" class="text" name="search" id="search" placeholder="Tìm kiếm">
                            <input type="submit" class="submit" value="Search">
                            @error('search')
                                <small style="margin-top:10px;font-size:15px"
                                    class="form-text text-danger">{{ $message }}</small>
                            @enderror
                        </form>

                    </div>
                    <div class="sidebar-kind-film-title">
                        <h1>Phim lẻ hot</h1>
                    </div>
                    <div class="sidebar-kind-film-scroll">
                        @foreach ($film_odd_hot as $item)
                            <div class="sidebar-kind-film">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="film-photo">
                                            <a href="{{ route('intro_film', Str::slug($item->name)) }}"
                                                title="{{ $item->name }}"><img style="width:80px;height:100px"
                                                    src="{{ url($item->photo) }}" alt=""></a>
                                        </div>
                                    </div>
                                    <div class="col-md-8" style="padding: 25px 5px">
                                        <div class="film-rate">
                                            @php
                                                $var = [1, 2, 3, 4, 5];
                                                $rate = ceil($item->rate / 2);
                                            @endphp
                                            @foreach ($var as $key => $value)
                                                @if ($value <= $rate)
                                                    <i id="star-{{ $value }}" data-id="{{ $value }}"
                                                        data-score="{{ $rate }}" data-total-rate=""
                                                        title="{{ $value }}"
                                                        style="font-size:15px;margin-right:5px;color:orange"
                                                        class="star fas fa-star"></i>
                                                @else
                                                    <i id="star-{{ $value }}" data-id="{{ $value }}"
                                                        data-score="{{ $rate }}" data-total-rate=""
                                                        title="{{ $value }}" style="font-size:15px;margin-right:5px"
                                                        class="star fas fa-star"></i>
                                                @endif
                                            @endforeach
                                            {{-- <img src="{{asset('client/public/images/4-sao.png')}}" alt=""> --}}
                                        </div>
                                        <div class="film-title">
                                            <a
                                                href="{{ route('intro_film', Str::slug($item->name)) }}">{{ Str::before($item->name, '-') }}</a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        @endforeach

                    </div>
                    <div class="sidebar-kind-film-title">
                        <h1>Phim bộ hot</h1>
                    </div>
                    <div class="sidebar-kind-film-scroll">
                        @foreach ($film_serie_hot as $item)
                            <div class="sidebar-kind-film">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="film-photo">
                                            <a href="{{ route('intro_film', Str::slug($item->name)) }}"
                                                title="{{ $item->name }}"><img style="width:80px;height:100px"
                                                    src="{{ url($item->photo) }}" alt=""></a>
                                        </div>
                                    </div>
                                    <div class="col-md-8" style="padding: 25px 10px">
                                        <div class="film-rate">
                                            @php
                                                $var = [1, 2, 3, 4, 5];
                                                $rate = ceil($item->rate / 2);
                                            @endphp
                                            @foreach ($var as $key => $value)
                                                @if ($value <= $rate)
                                                    <i id="star-{{ $value }}" data-id="{{ $value }}"
                                                        data-score="{{ $rate }}" data-total-rate=""
                                                        title="{{ $value }}"
                                                        style="font-size:15px;margin-right:5px;color:orange"
                                                        class="star fas fa-star"></i>
                                                @else
                                                    <i id="star-{{ $value }}" data-id="{{ $value }}"
                                                        data-score="{{ $rate }}" data-total-rate=""
                                                        title="{{ $value }}" style="font-size:15px;margin-right:5px"
                                                        class="star fas fa-star"></i>
                                                @endif
                                            @endforeach
                                            {{-- <img src="{{asset('client/public/images/4-sao.png')}}" alt=""> --}}
                                        </div>
                                        <div class="film-title">
                                            <a
                                                href="{{ route('intro_film', Str::slug($item->name)) }}">{{ Str::before($item->name, 'Vietsub') }}</a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        @endforeach

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
