require_dependency "admin/application_controller"

module Admin
  class GalleriesController < ApplicationController
    include Godmin::Resources::ResourceController

		def create
			submit_status = params[:commit].parameterize.underscore
			@gallery = Gallery.new(gallery_params)
			if submit_status.include?('save_and_edit')
				if @gallery.save
					redirect_to edit_gallery_path(@gallery)
				end
			else
				if @gallery.save
					redirect_to edit_gallery_path(@gallery)
				end
			end
		end

		def gallery_params
			params.require(:gallery).permit(:title, :description)
		end
  end
end
