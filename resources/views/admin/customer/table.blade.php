
<!DOCTYPE html>
<html>
<head>
</head>

<body>

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
	</body>
	</html>





