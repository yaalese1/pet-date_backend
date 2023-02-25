class PetsController < ApplicationController

    def index
        pets = Pet.all
        render json: pets,  status: 201
    end


    def create
        new_pet = Pet.create!(pet_params)
        render json: new_pet
    end

    def update 
        edit_pet = find_pet
        edit_pet.update!(pet_params)
        render json: edit_pet, status: :ok
    end





    def destroy
    remove_pet = find_pet

    remove_pet.destroy
    
    head :no_content 
    end

















 private

    def find_pet
    Pet.find( params[:id])
    end 

    def pet_params
    params.permit(:name, :species, :breed ,:age, :mental_disorder, :active, :trained, :diet, :size,  :owner_id)
    end

end