class Page < ActiveRecord::Base
	include FeaturedImageUploader::Attachment.new(:featured_image)
end
