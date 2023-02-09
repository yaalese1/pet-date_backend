class UsersController < ApplicationController
    before_action :authorize, only: [:show, :user_profile]



    def signup
        user = User.create!(user_params)
        if user.valid?
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: { error: user.errors.full_messages }, status: :unprocessable_entity
        end
    end


     def show
        user = User.find_by(id: session[:user_id])
        render json: user
     end




     def user_profile
        user = User.find_by(id: session[:user_id])
        if user
            render json: user , serializer: UserProfileSerializer, status: :ok
        else
            authorize
        end
 
     end 





    private
    def authorize
        return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
      end
    def user_params
        params.permit(:first_name, :last_name, :email, :password, :password_confirmation, :age, :address, :seeking_relationship )
    end 
    
   
end
