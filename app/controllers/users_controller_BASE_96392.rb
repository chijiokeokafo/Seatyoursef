class UsersController < ApplicationController
<<<<<<< HEAD
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
    params.require(:user).permit(:email, :password, :password_confirmation)
end
=======
  def new
  	
  end

  def create
  end
>>>>>>> 7009a47373d59190d5a149f09e6b64285ea56aff
end
