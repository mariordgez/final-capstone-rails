class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :model
      t.string :brand
      t.decimal :price, precision: 10, scale: 2
      t.text :image_url
      t.boolean :remove
      t.timestamps
    end
  end
end
