class RestaurantsController < ApplicationController
  def index
  	@restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
  	@restaurant = Restaurant.new
  end

  def create
  	@restaurant = Restaurant.new(restuarant_params)

  	if @restaurant.save
  		redirect_to restaurants_url
  	else
  		render :new
  	end	
  end

  private
  def product_params
  	params.require(:restaurant).permit(:name, :open_time, :close_time, :capacity)
  end 	
  

 
end
