require_dependency "admin/application_controller"

module Admin
  class ImagesController < ApplicationController
    include Godmin::Resources::ResourceController
  end
end
