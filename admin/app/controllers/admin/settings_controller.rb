require_dependency "admin/application_controller"

module Admin
  class SettingsController < ApplicationController
    include Godmin::Resources::ResourceController

		def show
      @setting = Setting.first
    end

    def edit
      @setting = Setting.first
    end

    def update
      @setting = Setting.first

      if @setting.update(config_params)
        redirect_to @setting
      else
        render :edit
      end
    end

    private

    def config_params
      params.require(:setting).permit(
        :email_contact,
        :site_name,
        :site_description,
        :site_meta_keywords
      )
    end
  end
end
