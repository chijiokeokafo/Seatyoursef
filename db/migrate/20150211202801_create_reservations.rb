class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :month
      t.integer :day
      t.integer :party_size
      t.integer :restaurant_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
