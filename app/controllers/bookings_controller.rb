class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.room = Room.find(params[:room_id])

    if @booking.save
      redirect_to room_path(@booking.room), notice: "You've booked your room!"
    else
      redirect_to room_path(@booking.room), notice: "Your booking was unsuccessful!"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
