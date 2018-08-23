 @extends('test.list')

 @section('content')

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
            <tfoot>
              <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Email</th>
                <th>Active</th>
              </tr>
            </tfoot>
          </table>
          {!! $customers->render() !!}


@endsection