<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý</title>
    <link rel="stylesheet" href="{{asset('admin/public/css/bootstrap/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('admin/public/css/bootstrap/css/bootstrap-grid.min.css')}}">
    <link rel="stylesheet" href="{{asset('admin/public/fontawesome/css/all.min.css')}}">
    <link href="{{asset('admin/public/reset.css')}}" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="{{asset('admin/public/style.css')}}">
    
    <script src="{{asset('admin/public/js/jquery-2.2.4.min.js')}}"></script>
    <script src="{{asset('admin/public/js/main.js')}}"></script> 
</head>

<body>
    <style>
         #wrapper #wp-header #header .btn-group button .logout{
             display: none;
         }
        #wrapper #wp-header #header .btn-group button:hover .logout{
      display: block;
        }
    </style>
    <div id="wrapper">
        <div id="wp-header">
            <div id="header">
                <a class="logo" href='{{route('home')}}'><i style="color:yellow;" class="fas fa-film box"></i>SubPhimnhanh.net</a>
                <h1 class="slogan">If I Fail, I Try Again And Again, And Again</h1>
                <div class="btn-group" style="position: absolute;top: 30px;right: 15px;">
                    <button class="btn btn-primary" type="button" >
                        <a style="font-size: 15px;padding:0px;color:white" id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }}
                        </a>
                        <div style="background: #fbff00" class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a  style="font-size: 20px;padding:0px;color:orange;text-align:center;"  class="dropdown-item" href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                             document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                @csrf
                            </form>
                        </div>
                    </button>
                </div>
            </div>
        </div>
        <div id="wp-content">
            <div class="row">
                <div class="col-md-2">
                    <div id="sidebar">
                        <ul id="sidebar-menu" >
                            <li class="nav-item {{$active=Str::contains(url()->current(),'film_odds')==1?'active':' '}}"  >
                                <a  href="" class="nav-link nav-toggle">
                                <i style="font-size: 30px;" class="fas fa-file-video"></i> 
                                <span class="title">Phim Lẻ</span></a>
                                {{-- {{$active=Str::contains(url()->current(),'film_odds')!='true'? :active}} --}}
                                <ul class="sub-menu {{$active=Str::contains(url()->current(),'film_odds')==1?'active':' '}}"  >
                                    <li class="nav-item"> <a href="{{route('film_odds.add')}}"><i class="fab fa-wolf-pack-battalion"></i> Thêm mới</a> </li>
                                    <li class="nav-item"> <a href="{{route('film_odds.list')}}"><i class="fab fa-wolf-pack-battalion"></i> Danh sách phim</a> </li>
                                </ul>
                            </li>
                            <li class="nav-item {{$active=Str::contains(url()->current(),'film_series')==1?'active':' '}}">
                                <a  href="" class="nav-link nav-toggle">
                                <i style="font-size: 30px;" class="fas fa-file-video"></i> 
                                <span class="title">Phim Bộ</span></a>
                                <ul class="sub-menu {{$active=Str::contains(url()->current(),'film_series')==1?'active':' '}}">
                                    <li class="nav-item"> <a href="{{route('film_series.add')}}"><i class="fab fa-wolf-pack-battalion"></i> Thêm mới</a> </li>
                                    <li class="nav-item"> <a href="{{route('film_series.list')}}"><i class="fab fa-wolf-pack-battalion"></i> Danh sách phim</a> </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                @yield('content')
            </div>
        </div>
        </div>
        </body>
        
        </html>