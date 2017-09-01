module Admin
  class PageService
    include Godmin::Resources::ResourceService

    attrs_for_index :title, :featured_image
    attrs_for_show :title, :content, :featured_image
    attrs_for_form :title, :content, :featured_image
  end
end
