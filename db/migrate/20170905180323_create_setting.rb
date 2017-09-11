class CreateSetting < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :email_contact
      t.string :site_name
      t.string :site_description
      t.text :site_meta_keywords
    end
  end
end
