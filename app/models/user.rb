class User < ActiveRecord::Base
	has_secure_password
	has_many :reservations
	has_many :restaurants, through: :reviews
	validates :first_name, :last_name, presence: true
end
