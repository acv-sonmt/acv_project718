<!doctype html>
<html lang="en">
<head>

    <meta charset="utf-8">

    <title>Laravel AJAX Pagination with JQuery</title>

</head>
<body>

<h1>Posts</h1>

<div class="posts">
@include('posts', ['data' => $data])
</div>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script>
    $(window).on('hashchange', function() {
        if (window.location.hash) {
            var page = window.location.hash.replace('#', '');
            if (page == Number.NaN || page <= 0) {
                return false;
            } else {
                getPosts(page);
            }
        }
    });
    $(document).ready(function() {
        getPosts(1);

        $(document).on('click', '.pagination a', function (e) {
            getPosts($(this).attr('href').split('page=')[1]);
            e.preventDefault();
        });
    });
    function getPosts(page) {
        $.ajax({
            url : '?page=' + page,
            dataType: 'json',
        }).done(function (data) {
            //
            //console.log(data);
            //tao cau truc table bang cach for data
            //foreacch trong jquery
            $('.posts').html(data);
        }).fail(function () {
            alert('Posts could not be loaded.');
        });
    }
</script>

</body>
</html>