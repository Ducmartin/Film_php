@extends('layouts.client.home')
@section('content')
<div class="content-wp">
    <div class="content">
        <!-- <div class="banner">
            <a href="http://affiliate.w88c1.com/Track.aspx?affiliateid=17440" target="_blank">
                <img style="width:100%" src="https://ff.imacdn.com/img/w88-980x100.jpg"></a>
        </div> -->
        <div class="film_slider" style="margin-top:15px">
                <h1 style="color:green;font-size: 40px;"><i class="fas fa-video"></i> Mới Cập Nhật</h1>
        </div>
        <div id="myCarousel" class="carousel slide"  data-ride="carousel" style="display:block">
            <div class="carousel-inner row" >     
                <div class=" item active" style="width: 100%;">
                    <div class="row"> 
                        @foreach ($film_slide_series as $film_serie)
                        <div class="line" style="width:23%;margin:0px 1%;">
                            <div style="height: 350px;" class="item_film">
                                <a href="{{route('intro_film',Str::slug($film_serie->name))}}" >
                                    <img style="height: 100%" class="tray-item-thumbnail" src="{{url($film_serie->photo)}}" title="{{$film_serie->name}}">
                                    <div class="description"><span class="quality">HD</span><span class="tray-item-point"><i style="color:yellow" class="fas fa-star"></i> {{$film_serie->rate}}/10</span>
                                        <div class="title">{{Str::limit($film_serie->name, '25')}}</div>
                                        <div class="episode" > {{$episode=$film_serie->update_episode==$film_serie->end_episode?'Full':'Tập '.$film_serie->update_episode}}</div>
                                    </div>
                                    <div class="play">
                                        <i class="fas fa-play"></i>
                                    </div>
                                    <div class="button"><i class="icon-play"></i></div>
                                    <div class="audio">{{$film_serie->translate->name}}</div>
                                </a>
                            </div>
                        </div>  
                        @endforeach                      
                    </div>
                </div>
                <div class=" item" style="width: 100%;">
                    <div class="row"> 
                        @foreach ($film_slide_odds as $film_odd)
                        <div class="line" style="width:23%;margin:0px 1%;">
                            <div style="height: 350px;" class="item_film">
                                <a href="{{route('intro_film',Str::slug($film_odd->name))}}" >
                                    <img style="height: 100%" class="tray-item-thumbnail" title="{{$film_odd->name}}" src="{{url($film_odd->photo)}}">
                                    <div class="description"><span class="quality">HD</span><span class="tray-item-point"><i style="color:yellow" class="fas fa-star"></i> {{$film_odd->rate}}/10</span>
                                        <div class="title">{{Str::limit($film_odd->name,'25')}}</div>
                                        <div class="episode" >FULL</div>
                                        
                                    </div>
                                    <div class="play">
                                        <i class="fas fa-play"></i>
                                    </div>
                                    <div class="button"><i class="icon-play"></i></div>
                                    <div class="audio">{{$film_odd->translate->name}}</div>
                                </a>
                            </div>
                        </div>  
                        @endforeach                      
                    </div>
                </div>
               
                <a class="left carousel-control" style="background: none;    width: 20px;height: 20px;margin: auto;" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" style="background:#000;border-radius: 10px;font-size: 20px;padding: 5px; position: absolute;left: 5px;"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" style="background: none;    width: 20px;height: 20px;margin: auto;" href=" #myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" style="background:#000;border-radius: 10px;font-size: 20px;padding: 5px; position: absolute;right: 5px;"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div class="film">
            <div class="film-new-update">
                <h1><i class="fas fa-video"></i> Phim Bộ Mới Cập Nhật</h1>
                <div class="row slider">
                    @foreach ($film_new_serie_2 as $item)
                        <div class="col-md-6 col-12">
                        <div class="item_film">
                            <a href="{{route('intro_film',Str::slug($item->name))}}">
                                @if (empty($item->bg_photo))
                                <img class="thumbnail"src="{{url($item->photo)}}" title="{{$item->name}}">
                                @else
                                <img class="thumbnail"src="{{url($item->bg_photo)}}" title="{{$item->name}}">
                                @endif
                                <div class="description">
                                    <div class="name"> Tập {{$item->update_episode}}</div>
                                    <div class="title">{{$item->name}}</div>
                                </div>
                                <div class="play">
                                    <i class="fas fa-play"></i>
                                </div>
                                <div class="audio">
                                   {{$item->translate->name}}
                                </div>
                            </a>
                        </div>
                    </div>
                    @endforeach
                </div>
                <div class="row">
                    @foreach ($film_new_serie_4 as $item)
                    <div class="col-lg-3 col-md-3 col-xs-4  col-6 line">
                        <div  class="item_film">
                            <a href="{{route('intro_film',Str::slug($item->name))}}" >
                                <img class="tray-item-thumbnail"  src="{{url($item->photo)}}" title="{{$item->name}}">
                                <div class="description"><span class="quality">HD</span><span class="tray-item-point"><i style="color:yellow" class="fas fa-star"></i> {{$item->rate}}/10</span>
                                    <div class="title">{{Str::limit($item->name,'20')}}</div>
                                    <div class="episode" >{{$episode=$film_serie->update_episode==$film_serie->end_episode?'Full':'Tập '.$film_serie->update_episode}}</div>
                                </div>
                                <div class="play">
                                    <i class="fas fa-play"></i>
                                </div>
                                <div class="button"><i class="icon-play"></i></div>
                                <div class="audio">{{$item->translate->name}}</div>
                            </a>
                            <div class="tray-item-trailer" data-id="19358" title="Xem trailer"><i class="icon-youtube"></i></div>
                        </div>
                    </div>
                   @endforeach
                </div>
                <h1 style="margin-top:0px"><i class="fas fa-video"></i> Phim chiếu rạp/Phim lẻ</h1> 
                <div class="row">
                    @foreach ($film_odds as $item)
                    <div class="col-lg-3 col-md-3 col-xs-4  col-6 line">
                        <div  class="item_film">
                            <a href="{{route('intro_film',Str::slug($item->name))}}" >
                                <img class="tray-item-thumbnail"  src="{{url($item->photo)}}" title="{{$item->name}}">
                                <div class="description"><span class="quality">HD</span><span class="tray-item-point"><i style="color:yellow" class="fas fa-star"></i> {{$item->rate}}/10</span>
                                    <div class="title">{{Str::limit($item->name,'20')}}</div>
                                    <div class="episode">Tập Full</div>
                                </div>
                                <div class="play">
                                    <i class="fas fa-play"></i>
                                </div>
                                <div class="button"><i class="icon-play"></i></div>
                                <div class="audio">{{$item->translate->name}}</div>
                            </a>
                            <div class="tray-item-trailer" data-id="19358" title="Xem trailer"><i class="icon-youtube"></i></div>
                        </div>
                    </div>
                   @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
@endsection