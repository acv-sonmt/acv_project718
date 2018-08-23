
@extends('admin.layout_list.index')

@section('content')

<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		General Form Elements
		<small>Preview</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li><a href="admin/customer/edit{$id}">Forms</a></li>
		<li class="active">Add Customer</li>
	</ol>
</section>
<!-- general form elements -->
<div class="col-md-6">
	<div class="box box-primary">
		<div class="box-header with-border">
			<h3 class="box-title">Edit Customer</h3>
		</div>
		<!-- /.box-header -->
		<!-- form start -->
		@if(session('success'))
		<div class="alert alert-success">
			{{session('success')}}
		</div>
		@endif
		<form role="form" method="POST" action="admin/customer/edit/{{$customer->id}}">
			<input type="hidden" name="_token" value="{{csrf_token()}}"/>

			<div class="box-body">
				<div class="form-group">
					<label for="name">Name</label>
					<input type="name" class="form-control" id="name" placeholder="Your name" name="name" value="{{$customer->name}}">
				</div>

				<div class="form-group">
					<label for="age">Age</label>
					<input type="age" class="form-control" id="age" placeholder="Day of birth" name="age" value="{{$customer->age}}">
				</div>

				<div class="form-group">
					<label for="phone">Phone</label>
					<input type="phone" class="form-control" id="phone" placeholder="Phone number" name="phone" value="{{$customer->phone}}">
				</div>

			</div>
			<!-- /.box-body -->

			<div class="box-footer">
				<button type="submit" class="btn btn-primary">Edit</button>
			</div>
		</form>
	</div>
</div>


@endsection