class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :content
      t.string :title
      t.text :featured_image_data

      t.timestamps null: false
    end
  end
end
