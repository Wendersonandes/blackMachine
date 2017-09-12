require_dependency "admin/application_controller"

module Admin
  class ContactMessagesController < ApplicationController
    include Godmin::Resources::ResourceController
  end
end
