class Restaurant < ActiveRecord::Base
	validates :name, presence: true
  validates :capacity, numericality: {only_integer: true}
  # validates :reservation_time, numericality: {only_integer: true}

	has_many :reservations
	has_many :users, through: :reservations
  belongs_to :user

    def available?(party_size, reservation_time)
		total_reservation_count = reservations.where(reservation_time: reservation_time).sum(:party_size)
		party_size + total_reservation_count <= capacity
	end
 end

