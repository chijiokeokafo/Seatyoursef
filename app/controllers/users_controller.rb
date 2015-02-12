class UsersController < ApplicationController	
  before_filter :insure_login, except: [:new, :create]

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to restaurants_url, notice: "Signed up"
		else
			render "new"
		end
	end

	private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
	end
end

