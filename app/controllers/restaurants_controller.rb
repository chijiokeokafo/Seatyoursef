class RestaurantsController < ApplicationController
  before_filter :insure_login, except: [:index, :show]

  def index
  	@restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reservation = Reservation.new
  end

  def new
  	@restaurant = Restaurant.new
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if current_user == @restaurant.user
      if @restaurant.update_attributes(restaurant_params)
        redirect_to restaurant_path(@restaurant)
      else
        render :edit
      end
    end
  end


  def create
  	@restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = current_user

  	if @restaurant.save
  		redirect_to 'reservations/show'
  	else
  		render :new
  	end	
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    if current_user == @restaurant.user
         @restaurant.destroy
         redirect_to restaurants_path
      end
  end

  private
  def restaurant_params
  	params.require(:restaurant).permit(:name, :reservation_time, :capacity)
  end 	
end

