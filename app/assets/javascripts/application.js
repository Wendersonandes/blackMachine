// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require jquery.vide
//= require_tree .

$(window).on('load', function() {
	$('.main_image_wrapper').vide({
			mp4: "https://s3-sa-east-1.amazonaws.com/blackmachine/Video01.mp4"
		},
		{
			loop: false
		}
	);
	
	videObj = $(".main_image_wrapper").data('vide').getVideoObject();

	$('.play').on('click', function(){
		$this = $(this);
		if(videObj.paused){
			videObj.play();
			$this.html("Pausar");
		}else{
			videObj.pause()
			$this.html("Tocar");
		}
	});

	$(videObj).on('ended', function(){
		$('.play').html("Tocar novamente");
	});

	$('.sound').on('click', function(){
		$this = $(this)
		if (videObj.muted == false) {
			videObj.muted = true;
			$this.html("Ativar som");
		} else {
			videObj.muted = false
			$this.html("Retirar o som");
		}
	});
});
