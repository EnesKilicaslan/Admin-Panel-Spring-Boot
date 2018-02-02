
$(document).ready( function () {
	
	var page=1;
	updateTable(page);
	
	console.log("1");
	//load first page of users
	$("#prevPage").addClass("inactiveLink");
	console.log("2");
	
	
	$("#nextPage").click(function(){
		page = page +1;
		updateTable(page);
		$("#prevPage").removeClass("inactiveLink"); 
	});
	
	$("#prevPage").click(function(){
		
		if(page > 1 ){
			page = page - 1;
			updateTable(page);
		}else{
			$(this).addClass("inactiveLink");
		}
	});
	
	
	// add user with ajax request
	$( "#add-user" ).submit(function(event) {
		

		$.ajax( {
				type: 'post',
				url : window.location + "users",
				contentType: "application/json",
				async: false,
				cache: false,
			    data: JSON.stringify( { 
			    		"firstName": $('#firstname').val(), 
			    		"lastName": $('#lastname').val(),
			    		"userName": $('#username').val(),
			    		"password": $('#password').val(),
			    		"role": $('#role').val(),
			    }),
			    
		} );		
		
		event.preventDefault();
		
		document.getElementById("add-user").reset();
		
		updateTable(page);
	});
	
	// delte link
	$('#usersTable').on("click", "a" , (function(){
		
		var r = confirm("Are you sure about deleting this student!");
		if(!r)
			return false;
		
		var id = $(this).parent().find('a').attr('value'); // this is the user id to delete
		
		$.ajax( {
			type: 'delete',
			async: false,
			cache: false,
			url : window.location + "users/" + id,
			contentType: "application/json",
			dataType: "json",
		    
		})
		
		updateTable(page);
		
	}));
	
	
});

function updateTable(p){
	$('#usersTable tfoot').empty();
	
	$.ajax( {
		type: 'get',
		url : window.location + "users/?page="+p,
		contentType: "application/json",
		dataType: "json"
	    
	}).done(function(data) {
		$.each(data, function(index, element) {
			$('#usersTable tfoot').append('<tr><td>' + element.id + '</td><td>' + element.firstName + '</td><td>' + element.lastName
					+ '</td><td>' + element.userName + '</td><td>' + element.password + '</td><td>' + element.role +
					'</td><td> <a value="' + element.id + '">' + 'delete' + '</a></td></tr>');
		});
	});
	
}

