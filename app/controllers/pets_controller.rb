class PetsController < ApplicationController
   
    def index
        pets = Pet.all
        render json: pets,  status: 201
    end


    def create
        new_pet = Pet.create!(pet_params)
        render json: new_pet, status: :created
    end

    def update 
      
        edit_pet = Pet.find(params[:id])
        edit_pet.update!(pet_params)
        render json: edit_pet, serializer: PetSerializer, status: :ok
    end

    def destroy
        remove_pet = find_pet
        
        remove_pet.destroy
        
        head :no_content 
    end
    

    # def pet_read
    #    read =  Pet.find( params[:id])
    #    if read
    #     pet_rev = read.pet_reviews
    #     render json:  pet_rev, include: :pet
    #    end
    # end
    
    def pet_reviews
        new_comments = PetReview.create!(review_params)
        render json: new_comments, status: :created
    end 
    
    
    def delete_pet_review

        review = PetReview.find(params[:id])
    
        review.destroy

        head :no_content
        
    end




 private

    def find_pet
    Pet.find( params[:id])
    end 

    def pet_params
    params.require(:pet).permit(:name, :species, :breed ,:age, :open_to_breeding,:mental_disorder, :active, :trained, :alteration, :diet, :size, :state, :city, :zip_code, :owner_id, :image)
    end


    def review_params
        params.permit(:comments, :star_rating, :pet_id )
    end

    def find_pet_review
        PetReview.find(params[:id])
    end

end