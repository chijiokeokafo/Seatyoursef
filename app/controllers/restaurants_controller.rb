class RestaurantsController < ApplicationController
  def index
  	@restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
  	@restaurant = Restaurant.new
      # if current_user
      # @reservation = @restaurant.reservations.build
  end

  def create
<<<<<<< HEAD
  	@restaurant = Restaurant.new(restaurant_params)
=======
  	@restaurant = Restaurant.new(restuarant_params)
>>>>>>> 6c97af66c1f39627fc6dcf9af2af8bbeec6eae65

  	if @restaurant.save
  		redirect_to restaurants_url
  	else
  		render :new
  	end	
  end

  private
  def restaurant_params
  	params.require(:restaurant).permit(:name, :open_time, :close_time, :capacity)
  end 	
  

 
end
