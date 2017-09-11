module Admin
  class SettingService
    include Godmin::Resources::ResourceService

    attrs_for_index :site_name, :site_description, :site_meta_keywords
    attrs_for_show :site_name, :site_description, :site_meta_keywords
    attrs_for_form :site_name, :site_description, :site_meta_keywords, :email_contact
  end
end
