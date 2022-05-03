<!DOCTYPE html>
<html lang="en">

<head>
    <title>Phim Hay | Phim HD Vietsub | Xem Phim Online | Xem Phim Nhanh | Subphimnhanh</title>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
    <meta name="title" content="Phim Hay | Phim HD Vietsub | Xem Phim Online | Xem Phim Nhanh | Subphimnhanh" />
    <meta name="revisit-after" content="1 days" />
    <meta name="robots" content="index,follow" />
    <meta property="fb:app_id" content="160300891955514" />
    <meta property="og:site_name" content="Subphimnhanh" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="https://subphimnhanh.net/" />
    <meta property="og:title" content="Phim Hay | Phim HD Vietsub | Xem Phim Online | Xem Phim Nhanh | Subphimnhanh" />
    <meta property="og:description"
        content="Subphimnhanh : Trải nghiệm phim tuyệt vời nhất 2021 cập nhật nhanh nhất, Xem Phim Online HD Vietsub - Thuyết Minh tốt trên nhiều thiết bị." />
    <meta name="description"
        content="Mọt Phim TV: Xem phim hay nhất 2021 cập nhật nhanh nhất, Xem Phim Online HD Vietsub - Thuyết Minh tốt trên nhiều thiết bị." />
    <meta name="keywords"
        content="Phim, xem phim, xem phim online, phim online, xem phim hd, phim vietsub, phim thuyet minh" />
    <meta name="csrf-token"
        content="Y0VhamlFRE9pUUJqQlFudVo3ZStka2tXV2RLSkx3am50QlhtR3VyN2VndVhpTjBWUEZBMHJHWVNEU09adUs4SA==">
    <link rel="stylesheet" href="{{ asset('client/public/fontawesome/css/all.min.css') }}">
    <link href="{{ asset('client/public/reset.css') }}" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="{{ asset('client/public/style.css') }}">
    <link rel="stylesheet" href="{{ asset('client/public/respon.css') }}">
    <link rel="stylesheet" href="{{ asset('client/public/css/bootstrap/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('client/public/css/bootstrap/css/bootstrap-grid.css') }}">
    <link rel="stylesheet" href="{{ asset('client/public/css/bootstrap/css/bootstrap-grid.min.css') }}">

    <script src="{{ asset('client/public/js/jquery-2.2.4.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('client/public/css/bootstrap/js/bootstrap.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('client/public/js/bootstrap/bootstrap.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('client/public/js/bootstrap/bootstrap.js') }}" type="text/javascript"></script>
    <script src="{{ asset('client/public/js/main.js') }}" type="text/javascript"></script>
    <title>Subphim</title>

</head>

<body>
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v12.0"
        nonce="7vwA4RAl"></script>
    <div id="site">
        <div id="container">
            <div id="header-wp">
                <ul id="search">
                    <a href="{{ route('home_client') }}">
                        <img style="width: 200px;
                            height: 100px;
                            position: absolute;
                            left: 15%;" src="{{ asset('uploads/logo/subphimnhanh.net.png') }}" alt="">
                    </a>
                    <form action="{{ route('validation_search_film') }}" method="POST"
                        class="form-group col-md-12 search" style="display:inline">
                        @csrf
                        <input type="text"
                            style="  width: 60%;margin-left: 30%;position: absolute;top: 30px;  font-size: 15px;"
                            class="form-control " name="search" placeholder="Nhập tên phim cần tìm kiếm">
                        <input type="submit" class="btn btn-primary form-control "
                            style="width: 8%;position: absolute;right: 0px;top: 30px;text-align:center" value="Search">
                        @error('search')
                            <small style="font-size: 15px; position: absolute;top: 65px;margin-left: 32%;"
                                class="form-text text-danger">{{ $message }}</small>
                        @enderror
                    </form>
                </ul>
                <ul class="main-menu">
                    <li class="logo no-respon">
                        <a style="font-size: 35px" href="{{ route('home_client') }}"><i style="color:yellow"
                                class="fas fa-film box"></i> SubPhimnhanh.net</a>
                    </li>
                    <li class="no-respon"><a href="{{ route('home_client') }}">Home</a> </li>
                    <li class="no-respon dropdown " style="cursor: pointer;">
                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            Thể Loại <i class="fas fa-caret-down"></i>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <div class="row">
                                <a class="dropdown-item col-md-4" href="{{ route('kind_film', 'hanh-dong') }}">Phim hành
                                    động</a>
                                <a class="dropdown-item col-md-4" href="{{ route('kind_film', 'hai-huoc') }}">Phim hài
                                    hước</a>
                                <a class="dropdown-item col-md-4" href="{{ route('kind_film', 'kinh-di') }}">Phim kinh
                                    dị</a>
                                <a class="dropdown-item col-md-4" href="{{ route('kind_film', 'tinh-cam') }}">Phim tình
                                    cảm</a>
                                <a class="dropdown-item col-md-4" href="{{ route('kind_film', 'vien-tuong') }}">Phim
                                    viễn tưởng</a>
                                <a class="dropdown-item col-md-4" href="{{ route('kind_film', 'hinh-su') }}">Phim hình
                                    sự</a>
                                <a class="dropdown-item col-md-4" href="{{ route('kind_film', 'chien-tranh') }}">Phim
                                    chiến tranh</a>
                                <a class="dropdown-item col-md-4" href="{{ route('kind_film', 'co-trang') }}">Phim cổ
                                    trang</a>
                                <a class="dropdown-item col-md-4" href="{{ route('kind_film', 'than-thoai') }}">Phim
                                    thần thoại</a>
                                <a class="dropdown-item col-md-4" href="{{ route('kind_film', 'phieu-luu') }}">Phim
                                    phiêu lưu</a>
                                <a class="dropdown-item col-md-4" href="{{ route('kind_film', 'hoat-hinh') }}">Phim hoạt
                                    hình</a>
                                <a class="dropdown-item col-md-4" href="{{ route('kind_film', 'tam-ly') }}">Phim tâm
                                    lý</a>
                            </div>

                        </div>
                    </li>
                    <li class="no-respon dropdown" style="cursor: pointer;">
                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            Quốc Gia <i class="fas fa-caret-down"></i>
                        </a>
                        <div class="dropdown-menu " aria-labelledby="dropdownMenuLink">
                            <div class="row">
                                <a class="dropdown-item col-md-4"
                                    href="{{ route('country', Str::slug('Trung Quốc')) }}">Trung Quốc</a>
                                <a class="dropdown-item col-md-4"
                                    href="{{ route('country', Str::slug('Mỹ')) }}">Mỹ</a>
                                <a class="dropdown-item col-md-4"
                                    href="{{ route('country', Str::slug('Nhật Bản')) }}">Nhật Bản</a>
                                <a class="dropdown-item col-md-4"
                                    href="{{ route('country', Str::slug('Ấn Độ')) }}">Ấn Độ</a>
                                <a class="dropdown-item col-md-4"
                                    href="{{ route('country', Str::slug('Hàn Quốc')) }}">Hàn Quốc</a>
                                <a class="dropdown-item col-md-4"
                                    href="{{ route('country', Str::slug('Anh')) }}">Anh</a>
                                <a class="dropdown-item col-md-4"
                                    href="{{ route('country', Str::slug('Thái Lan')) }}">Thái Lan</a>
                                <a class="dropdown-item col-md-4"
                                    href="{{ route('country', Str::slug('Khác')) }}">Nước Khác</a>
                            </div>

                        </div>
                    </li>

                    <li class="no-respon"><a href="{{ route('film_odd') }}">Phim lẻ</a></li>
                    <li class="no-respon"><a href="{{ route('film_serie') }}">Phim bộ</a></li>
                    <li class="no-respon"><a href="{{ route('movie_theater') }}">Phim chiếu rạp</a></li>
                </ul>
            </div>
            <!-- menu-respon -->
            @yield('content')
            <div id="top">
                <i class="fas fa-arrow-up"></i>
            </div>
            <div id="footer-wp">
                <div class="footer">
                    <div class="row">
                        <div class="col-4">
                            <a href="{{ route('film_serie') }}">Phim bộ</a>
                            <a href="{{ route('film_odd') }}">Phim lẻ</a>
                            <a href="{{ route('movie_theater') }}">Phim chiếu rạp</a>
                        </div>
                        <div class="col-4">
                            <a href="#"> Về chúng tôi</a>
                            <a href="#"> Giới thiệu</a>
                            <a href="#">Liên hệ</a>
                        </div>
                        <div class="col-4">
                            <a href="#"><i style="color: orange;" class="fab fa-facebook"></i> Facebook</a>
                            <a href="#"><i style="color: orange;" class="fab fa-youtube"></i> Youtube</a>
                            <a href="#"><i style="color: orange;" class="fab fa-instagram"></i> istagram</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div id="logo_respon">
            <a href="{{ route('home_client') }}">
                <img style="   height: 75px;
                width: 100%;" src="{{url('public/uploads/logo/logo_respon.jpg')}}" alt="" title="supphimnhanh.net"></a>
        </div>
        <div id="menu-respon">
            <i class="fas fa-search button_search"
                style="position: absolute; top: 25px;left: -90px;font-size: 28px;color: orange;cursor: pointer;"></i>
            <ul id="menu">
                <a href="" class="icon-menu">
                    <span id="icon" style="font-size: 30px;" class="fas fa-bars"></span>
                </a>
                <li class="menu-item">
                    <a href="{{ route('home_client') }}" class="">
                        <span class="title">Home</span>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="#" class="main-menu-kind">
                        <span class="title kind_respon">Thể loại</span>
                        <span class="icon-add kind_respon "><i style="font-size: 20px;"
                                class="fas fa-plus"></i></span>
                    </a>

                </li>
                <ul class="sub-menu-kind">
                    <a class="" href="{{ route('kind_film', 'hanh-dong') }}">Phim hành động</a>
                    <a class="" href="{{ route('kind_film', 'hai-huoc') }}">Phim hài hước</a>
                    <a class="" href="{{ route('kind_film', 'kinh-di') }}">Phim kinh dị</a>
                    <a class="" href="{{ route('kind_film', 'tinh-cam') }}">Phim tình cảm</a>
                    <a class="" href="{{ route('kind_film', 'vien-tuong') }}">Phim viễn tưởng</a>
                    <a class="" href="{{ route('kind_film', 'hinh-su') }}">Phim hình sự</a>
                    <a class="" href="{{ route('kind_film', 'chien-tranh') }}">Phim chiến tranh</a>
                    <a class="" href="{{ route('kind_film', 'co-trang') }}">Phim cổ trang</a>
                    <a class="" href="{{ route('kind_film', 'than-thoai') }}">Phim thần thoại</a>
                    <a class="" href="{{ route('kind_film', 'phieu-luu') }}">Phim phiêu lưu</a>
                    <a class="" href="{{ route('kind_film', 'hoat-hinh') }}">Phim hoạt hình</a>
                    <a class="" href="{{ route('kind_film', 'tam-ly') }}">Phim tâm lý</a>
                </ul>
                <li class="menu-item">
                    <a href="#" class="main-menu-country">
                        <span class="title ">Quốc gia</span>
                        <span class="icon-add "><i style="font-size: 20px;" class="fas fa-plus"></i></span>
                    </a>

                </li>
                <ul class="sub-menu-country">
                    <a class="dropdown-item col-md-4" href="{{ route('country', Str::slug('Trung Quốc')) }}">Trung
                        Quốc</a>
                    <a class="dropdown-item col-md-4" href="{{ route('country', Str::slug('Mỹ')) }}">Mỹ</a>
                    <a class="dropdown-item col-md-4" href="{{ route('country', Str::slug('Nhật Bản')) }}">Nhật
                        Bản</a>
                    <a class="dropdown-item col-md-4" href="{{ route('country', Str::slug('Ấn Độ')) }}">Ấn Độ</a>
                    <a class="dropdown-item col-md-4" href="{{ route('country', Str::slug('Hàn Quốc')) }}">Hàn
                        Quốc</a>
                    <a class="dropdown-item col-md-4" href="{{ route('country', Str::slug('Anh')) }}">Anh</a>
                    <a class="dropdown-item col-md-4" href="{{ route('country', Str::slug('Thái Lan')) }}">Thái
                        Lan</a>
                    <a class="dropdown-item col-md-4" href="{{ route('country', Str::slug('Khác')) }}">Nước Khác</a>
                </ul>
                <li class="menu-item">
                    <a href="{{ route('film_odd') }}" class="">
                        <span class="title">Phim lẻ</span>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{ route('film_serie') }}" class="">
                        <span class="title">Phim bộ</span>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{ route('movie_theater') }}" class="">
                        <span class="title">Phim chiếu rạp</span>
                    </a>
                </li>
            </ul>
        </div>
        <div id="home-search" style="    width: 100%;height: 200px;z-index: 20; position: absolute;top: 0px;    background: black;">
            <i class="fas fa-times" id="cancel-search"></i>
            <form action="{{ route('validation_search_film', $name = '') }}" method="POST" enctype="multipart/form-data" style="display: flex;justify-content: center;margin-top: 74px;">
                @csrf
                <input type="text"name="search" placeholder="Tìm kiếm" style="height: 34px;
                width: 63%;">
              <input type="submit" id="submit_form_respon" value="Tìm kiếm" class="btn-primary" style="height: 34px">
                @error('search')
                    <small id="error" style="margin-top:36px;font-size:15px;position: absolute; left: 16%;"
                        class="form-text text-danger">{{ $message }}</small>
                @enderror
            </form>
        </div>
        <style>
            #logo_respon{
                display: none;
                z-index: 10;
                position: absolute;
                top: 0px;
            }
            #home-search{
                display: none;
            }
            #cancel-search{
                font-size: 30px;
                color: orange;
                position: absolute;
                top: 5px;
                right: 10px;
                cursor: pointer;
            }
        </style>
        <script>
         $(document).ready(function(){
             $('#menu-respon>i.button_search').click(function(){
                $('#home-search').css('display','block');
             })
             $("#home-search>i#cancel-search").click(function(){
                $('#home-search').css('display','none');
             })
         })
        </script>
    </div>
</body>
</html>
