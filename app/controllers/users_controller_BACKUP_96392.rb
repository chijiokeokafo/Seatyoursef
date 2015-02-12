class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
<<<<<<< HEAD
      redirect_to restaurants_url, notice: "Signed up!"
=======
      redirect_to products_url, notice: "Signed up!"
>>>>>>> fba74e6c35da950325e0d03bc3ff64c5ee9227df
    else
      render "new"
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end