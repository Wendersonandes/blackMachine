require_dependency "admin/application_controller"

module Admin
  class GalleriesController < ApplicationController
    include Godmin::Resources::ResourceController
  end
end
