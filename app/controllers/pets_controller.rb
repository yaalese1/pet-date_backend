class PetsController < ApplicationController

    def index
        pets = Pet.all
        render json: pets,  status: 201
    end

    def update 
        edit_pet = find_pet
        edit_pet.update!(pet_params)
        render json: edit_pet, status: :ok
    end
end















private

def find_pet
    Pet.find( params[:id])
end 

def pet_params
    params.permit(:name, :age, :mental_disorder, :active, :trained, :diet, :size)
end