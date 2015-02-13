class ReservationsController < ApplicationController
 
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
      redirect_to restaurants_path, notice: 'Thank you!'
    else
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
    params.require(:reservation).permit(:date, :party_size)
  end

end
