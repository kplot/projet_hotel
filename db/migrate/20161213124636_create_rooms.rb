class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :kind
      t.belongs_to :hotel, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
