<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DANH SACH KHACH HANG</title>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">


</head>
<body>
<div class="container">
    <h1>DANH SÁCH KHÁCH HÀNG</h1>
    <div class="data-table">
        <table id="dt-customers" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Email</th>
                <th>Active</th>
              </tr>
            </thead>
            <tbody>
              @foreach ($customers as $customer)
              <tr>
                <td>{{ $customer->id }}</td>
                <td>{{ $customer->name }}</td>
                <td>{{ $customer->age }}</td>
                <td>{{ $customer->phone }}</td>
                <td>                  
                  <div class="col-md-3 col-sm-4"><a href="admin/customer/edit/{{$customer->id}}"><i class="fa fa-fw fa-edit"></i> Sửa</a></div>
                  <div class="col-md-3 col-sm-4"><a href="admin/customer/delete?id={{$customer->id}}"><i class="fa fa-fw fa-trash"></i>Xóa</a></div>
                </td>
              </tr>
              @endforeach
            </tbody>
          </table>
          {!! $customers->render() !!}

    </div>

</div>
<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script>
    $(document).ready (function(){
        getCustomers(1);
        $(document).on('click', '.pagination a', function (e) {
            e.preventDefault();
            //
            var page = $(this).attr('href');
            getCustomers(page);
        });
    });

    function getCustomers(page) {
        var data = {page:page};
        $.ajax({
            type: "GET",
            data:data,
            url: '?page='+ page
                    {{--{{route('list-customer')}}--}}
        })
            .success(function (data) {
                $('.data-table').html(data);
                //location.hash = page;
            }).fail(function () {
            alert('Customers could not be loaded.');
        });
    }
</script>
</body>
</html>

