class User < ActiveRecord::Base
	has_secure_password
	has_many :reservations
	has_many :restaurants, :through => :reservations

	validates :first_name, :last_name, presence: true
	validates :email, presence: true, uniqueness: true
	validates :password, confirmation: true
	validates :password_confirmation, presence: true
end
