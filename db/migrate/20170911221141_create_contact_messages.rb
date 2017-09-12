class CreateContactMessages < ActiveRecord::Migration
  def change
    create_table :contact_messages do |t|
      t.string :subject
      t.text :message
      t.string :email
      t.string :name
    end
  end
end
