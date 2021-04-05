class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    @surfboard = Surfboard.find(params[:surfboard_id])
    authorize @booking
  end

  def create
    @booking = BookingService.new.create_booking(booking_params, params[:surfboard_id], current_user)
    authorize @booking
    redirect_to booking_path(@booking)
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = BookingService.new.update_booking(booking_params, params[:id], current_user)
    authorize @booking
    redirect_to booking_path(@booking)

  end

  def my_bookings
    my_booking = BookingService.new.my_bookings(current_user)
    @current_bookings = my_booking[0]
    authorize @current_bookings
  end

  def destroy
    @booking = BookingService.new.destroy(params[:id], current_user)
    authorize @booking
    redirect_to my_booking_path
  end

  private

  def booking_params
    params.require(:booking).permit(:surfboard_id, :user_id, :status, :start_date, :end_date, :approved)
  end
end
