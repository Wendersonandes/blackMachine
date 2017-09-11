class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :start
      t.text :description
      t.string :url_ticket
    end
  end
end
