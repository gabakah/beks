// JavaScript Document

// This functions displays the youtube video in a lightbox
$(function() {
	/*$('.fancyYoutube').click(function() {	
		console.log("here");*/
		$('.fancyYoutube').fancybox({
			'titlePosition' : 'over',
			'overlayColor'	: '#000',
			'transitionOut'	: 'fade',
			'transitionIn'	: 'elastic',
			'autoScale'		: false,
			'width'			: 425,
			'height'		: 350,
			'type'			: 'swf'
		});
		
		return false;
/*	});*/
});