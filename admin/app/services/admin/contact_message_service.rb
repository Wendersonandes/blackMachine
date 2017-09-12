module Admin
  class ContactMessageService
    include Godmin::Resources::ResourceService

    attrs_for_index :name, :subject, :message, :email
    attrs_for_show :name, :subject, :message, :email
    attrs_for_form :name, :subject, :message, :email
  end
end
