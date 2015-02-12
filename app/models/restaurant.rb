class Restaurant < ActiveRecord::Base
	
  	validates :name, presence: true
  	validates :open_time, :close_time, :capacity, numericality: {only_integer: true}

	has_many :reservations
	has_many :users, through: :reservations
end

