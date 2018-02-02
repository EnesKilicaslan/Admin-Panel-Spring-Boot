
$(document).ready( function () {
	
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
			    }),
		 });		
	})
		
		
	

});

