class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @booking = Booking.new
    @room = Room.find(params[:id])
    @bookings = @room.bookings
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.starts_at,
        to: booking.ends_at
      }
    end
  end
end
