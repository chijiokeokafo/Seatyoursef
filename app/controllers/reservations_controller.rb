class ReservationsController < ApplicationController
  before_action  :load_restaurant
 
  def new
  	@reservation = Reservation.new
  end

  def show    
  	@reservation = Reservation.find(params[:id])
  end


  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
  	@reservation = @restaurant.reservations.build(reservation_params)
    @reservation.user = current_user
      if @reservation.save
      redirect_to restaurant_reservation_path(@restaurant, @reservation), notice: 'Thank you!'
    else
      flash[:alert] = @reservation.errors.full_messages.to_sentence
      render 'restaurants/show'
    end
  end



  def destroy
  	@reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

  def edit
  end



  private
  def reservation_params
    params.require(:reservation).permit(:date, :reservation_time, :party_size)
  end
  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
