class ChangeReservationFieldsToDatetime < ActiveRecord::Migration
  def change
  	remove_column :reservations, :day
  	remove_column :reservations, :month
  	add_column :reservations, :date, :datetime
  end
end
