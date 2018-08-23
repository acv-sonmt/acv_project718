<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Demo Paginate</title>
    <base href="{{ asset('') }}">
    <link href='http://fonts.googleapis.com/css?family=Dosis:300,400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
    <script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
    <script src="http://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <h1>DANH SACH KHACH HANG</h1>

    <table class="table">
        <tr>
            <td>ID</td>
            <td>Tên KH</td>
            <td>Tuổi</td>
            <td>SĐT</td>
        </tr>
        @foreach ($customers as $customer)
            <tr>
                <td>{{ $customer->id }}</td>
                <td>{{ $customer->name }}</td>
                <td>{{ $customer->age }}</td>
                <td>{{ $customer->phone }}</td>
            </tr>
        @endforeach
    </table>

</div>

<script>
    $(document).on('click','.pagination a', function(e){
        e.preventDefault();
        var page = $(this).text();
        getPosts(page);
    });

    function getPosts(page)
    {
        $.ajax({
            type: "GET",
            url: '?page='+ page
        })
            .success(function(data) {
                $('body').html(data);
            });
    }
</script>
</body>
</html>