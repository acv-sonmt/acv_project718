var page = 1;

var current_page = 1;

var total_page = 0;

var is_ajax_fire = 0;


getPageData(1,'');


$.ajaxSetup({

    headers: {

        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')

    }
});


/*search list */
$('body').on('change', '.key', function(e){
    var key = $(this).val();
        //$.get(url,{key:key},function(data){
            //console.log(data);
            //manageRow(data.data.data,data.key);
            $('.pagination').twbsPagination('destroy');
            getPageData(1,key);
        });
   // });

   /* Get Page Data*/

   function getPageData(page,key) {
    //console.log(key);
    $.ajax({

    	dataType: 'json',

    	url: url,

    	data: {page:page,key:key}

    }).done(function(data){
      manageRow(data.data.data);
      genPagging(data.data.last_page, data.data.current_page);

  });

}
function genPagging(totalPages, currentPage) {

    $('#pagination').append().twbsPagination({

        totalPages: totalPages,
        visiblePages: currentPage,
        onPageClick: function (event, pageL) {

            page = pageL;
            var key = $(".key").val();
            if(page!=1){
                getPageData(page,key);
            }

        }

    });
}

/* Add new Customer table row */

function manageRow(data) {
	var	rows = '';

	$.each( data, function( key, value ) {

        rows = rows + '<tr>';

        rows = rows + '<td>'+value.name+'</td>';

        rows = rows + '<td>'+value.age+'</td>';

        rows = rows + '<td>'+value.phone+'</td>';

        rows = rows + '<td data-id="'+value.id+'">';

        rows = rows + '<button data-toggle="modal" data-target="#edit-customer" class="btn btn-primary edit-customer">Edit</button> ';

        rows = rows + '<button class="btn btn-danger remove-customer">Delete</button>';

        rows = rows + '</td>';

        rows = rows + '</tr>';

    });

	$("tbody").html(rows);
// var tbody = $("#tbody");
//   $(tbody).empty();
//   data.forEach(function(obj) {
//     var row = $("#tr-customer").contents().clone();
//     //console.log(row);
//     $(row).find('.name').html(obj.name);
//     $(row).find('.age').html(obj.age);
//     $(row).find('.phone').html(obj.phone);
//     $(row).find('.edit').attr("href", "admin/customer/edit/"+obj.id);
//     //$(row).find('.hf')
//     $(tbody).append($(row));
//   });
}


/* Create new Customer */

$(".crud-submit").click(function(e){

    e.preventDefault();

    var form_action = $("#create-customer").find("form").attr("action");

    var name = $("#create-customer").find("input[name='name']").val();
    var age = $("#create-customer").find("input[name='age']").val();
    var phone = $("#create-customer").find("input[name='phone']").val();

    $.ajax({

        dataType: 'json',

        type:'POST',

        url: form_action,

        data:{name:name, age:age, phone:phone}

    }).done(function(data){

        getPageData();

        $(".modal").modal('hide');

        toastr.success('Customer Created Successfully.', 'Success Alert', {timeOut: 3000});

    });


});


/* Remove Customer */

$("body").on("click",".remove-customer",function(){

    var id = $(this).parent("td").data('id');

    var c_obj = $(this).parents("tr");

    $.ajax({

        dataType: 'json',

        type:'delete',

        url: "customer-ajax" + '/' + id,

    }).done(function(data){

        c_obj.remove();

        toastr.success('Customer Deleted Successfully.', 'Success Alert', {timeOut: 3000});

        getPageData();

    });

});


/* Edit Customer */

$("body").on("click",".edit-customer",function(){

    var id = $(this).parent("td").data('id');

    var name = $(this).parent("td").prev("td").prev("td").prev("td").text();
    var age = $(this).parent("td").prev("td").prev("td").text();
    var phone = $(this).parent("td").prev("td").text();

    //var description = $(this).parent("td").prev("td").text();/

    $("#edit-customer").find("input[name='name']").val(name);
    $("#edit-customer").find("input[name='age']").val(age);
    $("#edit-customer").find("input[name='phone']").val(phone);

    //$("#edit-customer").find("textarea[name='description']").val(description);

    $("#edit-customer").find("form").attr("action","customer-ajax" + '/' + id);

});


/* Updated new Customer */
$(".crud-submit-edit").click(function(e){

    e.preventDefault();

    var form_action = $("#edit-customer").find("form").attr("action");

    var name = $("#edit-customer").find("input[name='name']").val();
    var age = $("#edit-customer").find("input[name='age']").val();
    var phone = $("#edit-customer").find("input[name='phone']").val();
    

    //var description = $("#edit-customer").find("textarea[name='description']").val();


    $.ajax({

        dataType: 'json',

        type:'PUT',

        url: form_action,

        data:{name:name, age:age, phone:phone}

    }).done(function(data){

        getPageData();

        $(".modal").modal('hide');

        toastr.success('Customer Updated Successfully.', 'Success Alert', {timeOut: 3000});

    });

});