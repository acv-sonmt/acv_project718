<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Đây là trang sử dụng Template</title>
    <link rel="{{asset('js/lib/')}}">
</head>
<body>

{{--//@yield(‘bat_ky_ten_nao’)phương thức laravel nói các trang khác sử dụng template biết đây là phần nd cần thay đổi--}}
@yield('content')

</body>
</html>