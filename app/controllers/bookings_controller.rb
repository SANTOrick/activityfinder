class BookingsController < ApplicationController

    def index
      @bookings = Booking.all
    end

    def show
      @booking = find_me

    end

    def new

    end

    def create
      @booking = Booking.create(booking_params)
      redirect_to @booking
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

    private

    def booking_params
      params.require(:booking).permit()
    end
end
