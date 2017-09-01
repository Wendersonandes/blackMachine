module Admin
  class GalleryService
    include Godmin::Resources::ResourceService

    attrs_for_index :title, :description
    attrs_for_show :title, :description
    attrs_for_form :title, :description
  end
end
