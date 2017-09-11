module Admin
  class EventService
    include Godmin::Resources::ResourceService

    attrs_for_index :title, :start, :description, :url_ticket
    attrs_for_show :title, :start, :description, :url_ticket
    attrs_for_form :title, :start, :description, :url_ticket
  end
end
