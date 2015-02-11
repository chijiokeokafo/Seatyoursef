class Reservation < ActiveRecord::Base
	belongs_to :restaurant
	beongs_to :user
end
