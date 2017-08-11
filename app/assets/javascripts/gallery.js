function applyGrid(){
	var $container = $('.grid')
	$container.imagesLoaded( function(){
		$container.masonry({
			itemSelector: '.grid-item',
			columnWidth: '.grid-sizer',
			percentPosition: true
		});
	});
}

