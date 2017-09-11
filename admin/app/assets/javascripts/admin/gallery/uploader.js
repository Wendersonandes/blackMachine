$(document).on('turbolinks:load', function() {
	$('.image_uploader[type=file]').fileupload({
		add: function(e, data) {
			var options = {
				extension: data.files[0].name.match(/(\.\w+)?$/)[0], // set extension
				_: Date.now(),                                       // prevent caching
			}

			$.getJSON('/attachments/image/cache/presign', options, function(result) {
				data.formData = result['fields'];
				data.url = result['url'];
				data.submit();
			});
		},
		done: function(e, data) {

			var gallery = document.getElementById("previewImageGallery");
			var el = document.getElementById("galleryUploaderContainer");
			var image = {
				id: /cache\/(.+)/.exec(data.formData.key)[1], // we have to remove the prefix part
				storage: 'cache',
				metadata: {
					size:      data.files[0].size,
					filename:  data.files[0].name,
					mime_type: data.files[0].type
				}
			}

			$.ajax('/images', {
				method: 'POST', 
				data: {
					image: { file: JSON.stringify(image)},
					gallery_id: el.dataset.galleryId
				},
				success: function(image){
					var testHandlebars = HandlebarsTemplates['image'](image);
					gallery.insertAdjacentHTML('afterbegin', testHandlebars);
				}
			})
		}
	});
});
