module Admin
  class ApplicationController < ActionController::Base
    include Godmin::ApplicationController
		include Godmin::Authentication
    protect_from_forgery with: :exception

		def welcome
			@event = Event.new
			@gallery = Gallery.new
		end

		def authenticate_admin_user
			authenticate_admin_user!
		end

		def admin_user
			current_admin_user
		end

		def admin_user_signed_in?
			admin_user_signed_in?
		end
  end
end
