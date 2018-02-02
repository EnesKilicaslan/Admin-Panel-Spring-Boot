
$(document).ready( function () {
	
	var page=1;
	
	$.ajax( {
		type: 'get',
		url : window.location + "users/?page=3",
		contentType: "application/json",
		dataType: "json"
	    
	}).done(function(data) {
		$.each(data, function(index, element) {
			$('#usersTable tfoot').append('<tr><td>' + element.id + '</td><td>' + element.firstName + '</td><td>' + element.lastName
					+ '</td><td>' + element.userName + '</td><td>' + element.password + '</td><td>' + element.role + '</tr>');
		});
	});
	
	
	
	
	
	
	
	
	
	$( "#add-user" ).submit(function(event) {
			$.ajax( {
				type: 'post',
				url : window.location + "users",
				contentType: "application/json",
			    data: JSON.stringify( { 
			    		"firstName": $('#firstname').val(), 
			    		"lastName": $('#lastname').val(),
			    		"userName": $('#username').val(),
			    		"password": $('#password').val(),
			    		"role": $('#role').val(),
			    })
		 });		
	})
		
		
	

});

