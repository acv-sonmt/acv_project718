
@extends('admin.layout_list.index')

@section('content')

<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
    Data Tables
    <small>advanced tables</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="admin/customer/list">Tables</a></li>
    <li class="active">Customers</li>
  </ol>
</section>

<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-xs-12">

      <div class="box">
        <div class="box-header">
          <h3 class="box-title">LIST OF CUSTOMERS</h3>
        </div>
        <div class="col-sm-5 form-group">
            <div class="input-group">
                <input class="form-control" id="search"
                       value=""
                       placeholder="Search name" name="search"
                       type="text"/>
                      
                <div class="input-group-btn">
                    <button type="submit" class="btn btn-warning"
                            onclick=""
                    >
                        Search
                    </button>
                </div>
            </div>
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
          <div>
            <table id="dt-customers" class="table table-bordered table-striped">
              <thead>
                <tr>
                  
                  <th>Name</th>
                  <th>Age</th>
                  <th>Phone</th>
                  <th>Active</th>
                </tr>
              </thead>
              <tbody id="tbody">
                
              </tbody>
            </table>
          </div>
          <div class="paginate">
            {!! $customers->render() !!}
          </div>
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

{{-- teamplate for div dt-list --}}
<div class="template" style="display: none;">
  <div>
    <table id="dt-customers" class="table table-bordered table-striped">
      <tbody id="tr-customer">
        <tr>
        
          <td class="name">${obj.name}</td>
          <td class="age">${obj.age}</td>
          <td class="phone">${obj.phone}</td>
          <td>                  
            <div class="col-md-3 col-sm-4"><a class="edit"><i class="fa fa-fw fa-edit"></i> Sửa</a></div>
            <div class="col-md-3 col-sm-4"><a><i class="fa fa-fw fa-trash"></i>Xóa</a></div>
          </td>
        </tr>
      </tbody>
    </table>

  </div>
</div>

@endsection
@push("js")

<script type="text/javascript">
  var $ = jQuery.noConflict();
  $(document).ready(function(){
    $.get("{{route('putData')}}",function(data){
      console.log(data.data.data);
      putList(data.data.data);
      //dataTable();
    });
  });

  $(document).on('click', '.pagination a', function (e) {
    e.preventDefault();
    var page = $(this).attr('href').split('page=')[1];
      //alert(page);
      getCustomers(page);

    });

   $('body').on('keyup', '#search', function(e){
    var search = $(this).val();
    $.get("{{route('search')}}",{key:search},function(data){
      putList(data.data,search);
      // buildPaginate(data.data,data.key);
      //dataTable();
    });
    // $.get("paginate",{key:key},function(data){
    //   $(".page").html(data);
    // });
  });


  function getCustomers(page) {
   $.get("{{route('putData')}}",{page:page},function(data){
    putList(data.data);
  });
 }


 function putList(data, key){
  var tbody = $("#tbody");
  $(tbody).empty();
  data.forEach(function(obj) {
    var row = $("#tr-customer").contents().clone();
    //console.log(row);
    $(row).find('.name').html(obj.name);
    $(row).find('.age').html(obj.age);
    $(row).find('.phone').html(obj.phone);
    $(row).find('.edit').attr("href", "admin/customer/edit/"+obj.id);
    //$(row).find('.hf')
    $(tbody).append($(row));
  });
  //document.getElementById('dt-list').innerHTML = html;
}
</script>
<script>


</script>
@endpush