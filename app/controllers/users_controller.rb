class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :user_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_uprocessable_entity
    # before_action :authorize, only: [:show, :user_profile]



    def signup
       
        user = User.create!(user_params)
        
        if user.valid?
            session[:user_id] = user.id
            render json: user, status: :created
        # else
        #     render json: { error: user.errors.full_messages }, status: :unprocessable_entity
        end
    end


     def show
        user = User.find_by(id: session[:user_id])
        if user 
        render json: user,serializer: UserProfileSerializer, status: :ok
            # else
            #     authorize
            end
     
     end


def update_avatar
    edit_avatar = User.find(params[:id])
    edit_avatar.update!(avatar_params)

    render json: edit_avatar  ,status: 201
end 
   


      def update
        edit_user = User.find(params[:id])

        edit_user.update!(user_params)
        render json: edit_user,  serializer: UserProfileSerializer, status: 201
      end

      def pet_booking_for_user
        pet_booking = User.find(params[:id])
        pet_booking.pet_bookings.create!(booking_params)
        render json: pet_booking , serializer: UserProfileSerializer,status: 201

      end


    #   def owner_booking_update_for_owners_pets
        
    #     owner_booking = User.find(params[:id])
       
    #     update_owner_booking = owner_booking.my_bookings.find_by(params[:lender_id])
    #     update_owner_booking.update!(booking_params)
    #   if  update_owner_booking
    #     render json:  update_owner_booking ,serializer: BookingSerializer, status: 201
    #   else
    #     render json: { error: "Not authorized"}
    #   end
    #   end



#  def update_user_profile
#     edit_user_profile = User.find(params[:id])
#     edit_user_profile.update!(user_params)
#     render json: edit_user_profile, status: 201
#  end


    private

    def render_uprocessable_entity (invalid)
        render json: {errors: invalid.record.errors}, status: :unprocessable_entity
    end

    def user_not_found
        render json:{error:["user not found"]}, status: :not_found
    end
    # def authorize
    #     return render json: { error: "Not authorized Login or sign up to Pet & Date" }, status: :unauthorized unless session.include? :user_id
    #   end

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :age, :about_me, :city, :state, :zip_code, :pronouns, :seeking_relationship,:avatar, :my_bookings, :pet_bookings, :avatar_url)
    end 


    def booking_params
       params.permit(:start_time,:end_time,:start_date,:end_date,  :pickup_location,:dropoff_location, :pet_only, :lender_id, :borrower_id, :pet_id)
    end

   def owner_booking_params
    params.permit( :start_time,:end_time,:start_date,:end_date,  :pickup_location,:dropoff_location, :pet_only, :lender_id, :borrower_id, :pet_id)
   end
 
    def avatar_params
        params.require(:user).permit(:avatar, :password, :password_confirmation)
    end
    
 
end


