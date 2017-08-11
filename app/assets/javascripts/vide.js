$(window).on('turbolinks:load', function() {
	$('.main_video_wrapper').vide({
			mp4: "https://s3-sa-east-1.amazonaws.com/blackmachine/Video01.mp4"
		},
		{
			loop: false
		}
	);
	
	videObj = $(".main_video_wrapper").data('vide').getVideoObject();

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
