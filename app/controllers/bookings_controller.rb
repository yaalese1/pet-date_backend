class BookingsController < ApplicationController

    def index 
        bookings = Booking.all
        render json: bookings
    end

    def show
        booking = Booking.find(params[:id])
        render json: booking
    end

end
