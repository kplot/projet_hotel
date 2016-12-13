class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.text :description
      t.string :phone
      t.string :address
      t.string :photo
      t.boolean :homepage

      t.timestamps null: false
    end
  end
end
