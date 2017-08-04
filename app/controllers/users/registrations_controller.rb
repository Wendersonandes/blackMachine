class Users::RegistrationsController < Devise::RegistrationsController
	SANITIZED_PARAMS = [:email].freeze

	def after_sign_up_path_for(resource)
		home_path
  end
  def permit_params
    devise_parameter_sanitizer.for(:sign_up) << SANITIZED_PARAMS
    devise_parameter_sanitizer.for(:account_update) << SANITIZED_PARAMS
  end
end
