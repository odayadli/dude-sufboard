class BookingsController < ApplicationController
  def initialize
    @booking_service = BookingService.new
  end

  def index
    @bookings = @booking_service.all_booking
  end

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
    @booking = @booking_service.create_booking(booking_params, params[:surfboard_id], current_user)
    authorize @booking
    redirect_to booking_path(@booking)
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = @booking_service.update_booking(booking_params, params[:id], current_user)
    authorize @booking
    redirect_to booking_path(@booking)

  end

  def my_bookings
    my_booking = @booking_service.my_bookings(current_user)
    @current_bookings = my_booking[0]
    authorize @current_bookings
  end

  def bookings_requests
    @bookings_requested = @booking_service.bookings_requests(current_user)
    authorize @bookings_requested
  end

  def destroy
    @booking = @booking_service.destroy(params[:id], current_user)
    authorize @booking
    redirect_to my_booking_path
  end

  private

  def booking_params
    params.require(:booking).permit(:surfboard_id, :user_id, :status, :start_date, :end_date, :approved)
  end
end
