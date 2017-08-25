ActiveAdmin.register Page do
	menu :priority => 1
	permit_params :title, :content, :featured_image

	form html: { multipart: true } do |f|
		f.inputs do
			render 'test', locals: { :f => f }
			f.input :title
			f.input :content
			f.input :featured_image,:as => :file, :hint => image_tag(f.object.featured_image_url(:thumb))
			f.actions do
				f.action :submit
				f.action :cancel, :wrapper_html => { :class => 'cancel'}
			end
		end
	end
end
