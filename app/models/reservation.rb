class Reservation < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :user

	validates :party_size, :reservation_time, presence: true
	validate :availability 

	private
	def availability
		if !restaurant.available?(party_size, reservation_time)
		errors.add(:base, "restaurant isn't abailable for a booking, sorry!")
		end
	end
end
