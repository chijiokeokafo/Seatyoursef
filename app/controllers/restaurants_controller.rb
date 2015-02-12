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
  	@restaurant = Restaurant.new(restaurant_params)
<<<<<<< HEAD
=======
<<<<<<< HEAD
  	@restaurant = Restaurant.new(restaurant_params)

  	@restaurant = Restaurant.new(restuarant_params)

=======
>>>>>>> fc970c8b283297a785f967fc66f095adc4ef69de

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
