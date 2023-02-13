class PetsController < ApplicationController

    def index
        pets = Pet.all
        render json: pets,  status: 201
    end
end
