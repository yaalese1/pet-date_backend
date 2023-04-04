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
        if user 
        render json: user, serializer: UserProfileSerializer, status: :ok
            else
                authorize
            end
     
     end
     

      def update
        edit_user = User.find(params[:id])
    
        edit_user.update!(user_params)
        render json: edit_user,  serializer: UserProfileSerializer, status: 201
      end





#  def update_user_profile
#     edit_user_profile = User.find(params[:id])
#     edit_user_profile.update!(user_params)
#     render json: edit_user_profile, status: 201
#  end
  




    # def user_image
    #     user = User.find_by(id: session[:user_id])
    #     avatar = rails_blob_path(user.avatar)
    #     if user 
    #         render json: avatar
    #     end
    # end 






    private
    def authorize
        return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
      end

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :age, :about_me, :city, :state, :zip_code, :pronouns, :seeking_relationship,:avatar)
    end 

 
    def about_me_params
        params.permit(:about_me)
    end
    
   
end


