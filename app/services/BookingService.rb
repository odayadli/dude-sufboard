class BookingService

  def all_booking
    Booking.all
  end

  def get_booking(id)
    Booking.find(id)
  end

  def my_bookings(user)
    now = DateTime.now
    current_bookings = user.bookings.where('end_date > ?', now)
    old_bookings = user.bookings.where('end_date < ?', now)
    [current_bookings, old_bookings]
  end

  def bookings_requests(user)
    # @bookings_requested = Booking.select { |booking| booking.surfboard.id == :surfboard_id }
    Booking.select { |booking| booking.surfboard.user == user }
  end

  def create_booking(booking_params, surfboard_id, user)
    booking = Booking.new(booking_params)
    surfboard = Surfboard.find(surfboard_id)
    booking.surfboard = surfboard
    booking.client = user
    booking.save!
    booking
  end

  def update_booking(booking_params, id, user)
    booking = Booking.find(id)
    booking.client = user
    booking.update!(booking_params)
    booking
  end

  def destroy(id, user)
    booking = Booking.find(id)
    booking.client = user
    booking.destroy
  end
end

