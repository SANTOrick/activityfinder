class BookingsController < ApplicationController

    def index
      @bookings = Booking.all
    end

    def show
      @booking = find_me
    end

    def new
      @booking = Booking.new
    end

    def create
      @booking = Booking.find_or_create_by(booking_params)
      if @booking.save
        flash[:message] = "Booking added!"
      end
      redirect_to bookings_path
    end

    def edit
      @booking = find_me
    end

    def update
      @booking = find_me
      @booking.update(booking_params)

      redirect_to @booking
    end


    def find_me
      Booking.find(params[:id])
    end

    def destroy
      @booking = Booking.find(params[:id])
      @booking.destroy
      redirect_to bookings_path
    end
    private

    def booking_params
      params.require(:booking).permit(:user_id, :activity_id)
    end
end
