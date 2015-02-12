class Restaurant < ActiveRecord::Base
	
  	validates :name, presence: true
  	validates :capacity, numericality: {only_integer: true}

	has_many :reservations
	has_many :users, through: :reservations
  belongs_to :user 
end

