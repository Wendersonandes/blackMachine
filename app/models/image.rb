class Image < ActiveRecord::Base
	include ImageUploader::Attachment.new(:file)
  belongs_to :album
end
