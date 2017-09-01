class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.text :description
      t.text :file_data
      t.references :gallery, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
