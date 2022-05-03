@extends('layouts.client.home')
@section('content')
    <div class="content-wp">
        <div class="content">
            <!-- <div class="banner">
                    <a href="http://affiliate.w88c1.com/Track.aspx?affiliateid=17440" target="_blank">
                        <img style="width:100%" src="https://ff.imacdn.com/img/w88-980x100.jpg"></a>
                </div> -->
            <div class="film">
                <div class="film-new-update" style="margin-top:0px">
                    @if (!empty($fail))
                        <h1 style="margin-top:15px">{{ $fail }} </h1>
                        <p style="color:gray">Về trang chủ để xem nhiều bộ phim hơn</p>
                    @else
                        <div class="row">
                            @if (!empty($kind_film))
                            <h1 style="">Phim {{$kind=empty($kind_film->kind_film)?$kind_film->name:$kind_film->kind_film}}</h1>
                            @else
                            <h1 style="">Phim được tìm thấy</h1>
                            @endif
                            @if (isset($film_odds))
                                @foreach ($film_odds as $item)
                                    <div class="col-md-3    col-sm-6 col-12 line" style="">
                                        <div class="item_film">
                                            <a href="{{ route('intro_film', Str::slug($item->name)) }}">
                                                <img class="tray-item-thumbnail" src="{{ url($item->photo) }}">
                                                <div class="description"><span class="quality">HD</span><span
                                                        class="tray-item-point"><i style="color:yellow"
                                                            class="fas fa-star"></i> {{ $item->rate }}/10</span>
                                                    <div class="title">{{ Str::limit($item->name, '20') }}
                                                    </div>
                                                    <div class="episode"
                                                        style="position:absolute;bottom:5%;right:15px">
                                                        Full</div>
                                                </div>
                                                <div class="play">
                                                    <i class="fas fa-play"></i>
                                                </div>
                                                <div class="button"><i class="icon-play"></i></div>
                                                <div class="audio">{{ $item->translate->name }}</div>
                                            </a>
                                            <div class="tray-item-trailer" data-id="19358" title="Xem trailer"><i
                                                    class="icon-youtube"></i></div>
                                        </div>
                                    </div>
                                @endforeach
                            @endif
                            @if (isset($film_series))
                                    @foreach ($film_series as $item)
                                        <div class="col-md-3    col-sm-6 col-12 line" style="">
                                            <div class="item_film">
                                                <a href="{{ route('intro_film', Str::slug($item->name)) }}">
                                                    <img class="tray-item-thumbnail" src="{{ url($item->photo) }}">
                                                    <div class="description"><span class="quality">HD</span><span
                                                            class="tray-item-point"><i style="color:yellow"
                                                                class="fas fa-star"></i> {{ $item->rate }}/10</span>
                                                        <div class="title">
                                                            {{ Str::limit($item->name, '20') }}
                                                        </div>
                                                        <div class="episode"
                                                            style="position:absolute;bottom:5%;right:15px">
                                                            tập {{ $episode = $item->update_episode == null  ? 0 : $item->update_episode }}{{ $end=empty($item->end_episode)?'':'/'.$item->end_episode }}
                                                           </div>
                                                    </div>
                                                    <div class="play">
                                                        <i class="fas fa-play"></i>
                                                    </div>
                                                    <div class="button"><i class="icon-play"></i></div>
                                                    <div class="audio">{{ $item->translate->name }}</div>
                                                </a>
                                                <div class="tray-item-trailer" data-id="19358" title="Xem trailer"><i
                                                        class="icon-youtube"></i></div>
                                            </div>
                                        </div>
                                    @endforeach
                            @endif
                        </div>
                        <div class="paginate" style="margin-left:45%;margin-top:100px">
                            @if (isset($film_odds))
                                {{ $film_odds->links() }}
                           
                            @else @if (isset($film_series))
                                    {{ $film_series->links() }}
                                @endif
                           @endif
                        </div>
                    @endif

                </div>
            </div>
        </div>
    </div>
@endsection
