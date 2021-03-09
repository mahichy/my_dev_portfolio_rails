	$('#contact-form').addClass('animated rollIn');	

	$("#contact-form").hover(function(){
	    $(this).removeClass('rollIn');
	    $(this).toggleClass('pulse');
    }, function(){
    	$(this).removeClass('rollIn');
	    $(this).toggleClass('pulse');
	});