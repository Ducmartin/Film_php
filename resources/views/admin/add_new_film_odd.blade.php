@extends('layouts.admin.home')
@section('content')
    <div class="col-md-10">
        <div id="content">
            <div class="header" style="text-align:center">
                <h1>Thêm phim mới cập nhật</h1>
            </div>
            <form method="POST" action="{{ route('validation_film_odds') }}" enctype="multipart/form-data" file='true'>
                @csrf
                @csrf
                <div class="form-group title">
                    <label for="title">Tên Phim:</label>
                    <input type="text" class=" form-control" name="title" id="title" placeholder="Tên phim">
                    @error('title')
                        <small class="form-text text-danger">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group title">
                    <label for="intro">Giới thiệu:</label>
                    <textarea name="intro" class="form-control" id="intro" cols="30" rows="10"></textarea>
                    @error('intro')
                        <small class="form-text text-danger">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group rate">
                    <label for="rate">Đánh giá phim:</label>
                    <input type="text" min="1" max="10" class=" form-control" name="rate" placeholder="Đánh giá phim">
                    @error('rate')
                        <small class="form-text text-danger">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="">Thể loại phim:</label><br>
                    @foreach ($kinds as $kind)
                        <div class="form-check">
                            <input type="checkbox" {{ $check = $kind->slug == 'le' ? 'checked' : '' }} style="cursor: pointer;"
                                value="{{ $kind->slug }}" name="kind_id[]" id="{{ $kind->id }}">
                            <label for="{{ $kind->id }}">Phim {{ $kind->kind_film }}</label>
                        </div>
                    @endforeach
                    @error('kind_id')
                        <small class="form-text text-danger">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="country_id">Quốc gia:</label>
                    <select name="country_id" class="form-control" id="country_id">
                        <option value="">Quốc gia</option>
                        @foreach ($countries as $item)
                            <option value="{{ $item->id }}">{{ $item->name }}</option>
                        @endforeach
                    </select>
                    @error('country_id')
                        <small class="form-text text-danger">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="translate_id">Biên dịch:</label>
                    <select name="translate_id" class="form-control" id="translate_id">
                        <option value="">Biên dịch</option>
                        <option value="1">Vietsub</option>
                        <option value="2">Engsub</option>
                        <option value="3">Thuyết minh</option>
                    </select>
                    @error('translate_id')
                        <small class="form-text text-danger">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group photo">
                    <label for="photo">Ảnh đại diện phim:</label>
                    <input type="file" name="photo" id="photo" placeholder="Ảnh đại diện phim">
                    @error('photo')
                        <small class="form-text text-danger">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group title">
                    <label for="link">Link phim:</label>
                    <input type="text" class=" form-control" id="link" name="link" placeholder="Link phim">
                    @error('link')
                        <small class="form-text text-danger">{{ $message }}</small>
                    @enderror
                </div>
                <input type="submit" class="btn btn-warning" value="Thêm mới">
            </form>
        </div>
        <script src="https://cdn.tiny.cloud/1/1bx6anwf2afa3ba4k21eu3zx5ilnkmkywiy603xdqs11rb3d/tinymce/4/tinymce.min.js"
                referrerpolicy="origin"></script>
        <script>
            var editor_config = {
                path_absolute: "http://localhost/subphimnhanh.net/",
                selector: "textarea",
                plugins: [
                    "advlist autolink lists link image charmap print preview hr anchor pagebreak",
                    "searchreplace wordcount visualblocks visualchars code fullscreen",
                    "insertdatetime media nonbreaking save table contextmenu directionality",
                    "emoticons template paste textcolor colorpicker textpattern"
                ],
                toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media",
                relative_urls: false,
                file_browser_callback: function(field_name, url, type, win) {
                    var x = window.innerWidth || document.documentElement.clientWidth || document.getElementsByTagName(
                        'body')[0].clientWidth;
                    var y = window.innerHeight || document.documentElement.clientHeight || document
                        .getElementsByTagName('body')[0].clientHeight;

                    var cmsURL = editor_config.path_absolute + 'laravel-filemanager?field_name=' + field_name;
                    if (type == 'image') {
                        cmsURL = cmsURL + "&type=Images";
                    } else {
                        cmsURL = cmsURL + "&type=Files";
                    }

                    tinyMCE.activeEditor.windowManager.open({
                        file: cmsURL,
                        title: 'Filemanager',
                        width: x * 0.8,
                        height: y * 0.8,
                        resizable: "yes",
                        close_previous: "no"
                    });
                }
            };

            tinymce.init(editor_config);
        </script>
    </div>
@endsection
