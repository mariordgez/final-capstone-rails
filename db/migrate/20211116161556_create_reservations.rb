class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :date
      t.string :city
      t.integer :user_id
      t.integer :car_id

      t.timestamps
    end
  end
end
