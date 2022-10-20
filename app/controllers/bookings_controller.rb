class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @car = Car.find(params[:car_id])
  end

  def show
    @car = Car.find(params[:id])
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    @booking.car = @car
    @booking.user = current_user
    @booking.save
      redirect_to car_bookings_path(@car)
      flash[:alert] = "Booking Confirmed"
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to booking_path
    flash[:alert] = "Booking Cancelled"
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :car_id, :start_date, :end_date)
  end

end
