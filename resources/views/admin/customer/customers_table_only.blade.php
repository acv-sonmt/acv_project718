<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Data Tables</title>
  <base href="{{asset('')}}">
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="AdminLTE-master/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="AdminLTE-master/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="AdminLTE-master/bower_components/Ionicons/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="AdminLTE-master/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="AdminLTE-master/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="AdminLTE-master/dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
  

</head>

<body class="hold-transition skin-blue sidebar-mini">
  <div class="wrapper">

    {{-- Header of page --}}

    @include('admin.layout_list.header')

    {{-- Sidebar of page --}}

    @include('admin.layout_list.sidebar')

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      
      
      <!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-xs-12">

      <div class="box">
        <div class="box-header">
          <h3 class="box-title">LIST OF CUSTOMERS</h3>
        </div>
        <div class="col-md-1">
          <tr><a href="admin/customer/add"><button type="button" class="btn btn-block btn-success">Add</button></a></tr>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="mess">
            <tr>
              @if(session('success'))
              <div class="alert alert-success">
                {{session('success')}}
              </div>
              @endif
            </tr>
          </div>
          <table id="dt-customers" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>Phone</th>
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
                <th>Age</th>
                <th>Phone</th>
                <th>Active</th>
              </tr>
            </tfoot>
          </table>

           {{ pagination($customers->appends(Input::except('page')), 'layout.paginator') }}
<div>
          {!! $customers->render() !!}
        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->
    </div>
    <!-- /.col -->
  </div>
  <!-- /.row -->
</section>
<!-- /.content -->

    </div>
    <!-- /.content-wrapper -->

{{-- footer of page --}}
    @include('admin.layout_list.footer')

    {{-- control sidebar --}}
    @include('admin.layout_list.controlsidebar')

  </div>
  <!-- ./wrapper -->

  <!-- jQuery 3 -->
  <script src="AdminLTE-master/bower_components/jquery/dist/jquery.min.js"></script>
  <!-- Bootstrap 3.3.7 -->
  <script src="AdminLTE-master/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
  <!-- DataTables -->
  <script src="AdminLTE-master/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
  <script src="AdminLTE-master/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
  <!-- SlimScroll -->
  <script src="AdminLTE-master/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
  <!-- FastClick -->
  <script src="AdminLTE-master/bower_components/fastclick/lib/fastclick.js"></script>
  <!-- AdminLTE App -->
  <script src="AdminLTE-master/dist/js/adminlte.min.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="AdminLTE-master/dist/js/demo.js"></script>
  <!-- page script -->
  

<script>
$(function() {
    $(".pagination a").click(function() {
        return call_post_func($(this).attr('href'));
    });
});
function call_post_func(href)
{
    console.log(href);
    post_this(href)
    return false;
}
</script>

<script>
post_this(page_num)
{
    $.post("/ajax/update_customers_table", {
        "_token": "{{ csrf_token() }}",
        "page_num": page_num
    },
    function(result){
        $("#search_result").html(result)
    })
}
</script>


</body>


</html>
	