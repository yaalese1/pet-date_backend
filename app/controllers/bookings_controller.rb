class BookingsController < ApplicationController

    def index 
        bookings = Booking.all

      

        render json: bookings
    end

    def show
        booking = Booking.find(params[:id])
    
        bookinginfo = booking.lender
        
       booking_image = bookinginfo.avatar_url
        

        render json: booking_image
    end


    #     def create
    #         new_booking = Booking.create!(booking_params)
    #         render json: new_booking, status: 201
    #     end

        def update
            edit_booking = Booking.find(params[:id])
            edit_booking.update!(booking_params)
            render json: edit_booking, status: 200
        end

def destroy
    remove_booking = Booking.find(params[:id])
  remove_booking.destroy
    head :no_content 
end




        private
        def booking_params
            params.permit(:start_date, :end_date, :start_time, :end_time, :pickup_location,  :dropoff_location, :pet_only, :pet_id, :borrower_id, :lender_id)
        end
end
