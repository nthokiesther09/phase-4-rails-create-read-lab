class PlantsController < ApplicationController
   

    #GET /plants

    def index
        plants = Plant.all 
        render json: plants
    end
    
    #GET /plants/:id

    def show
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end
    #POST /birds
    def create
        plant = Plant.create(params.permit(:name, :image, :price))
        render json: plant, status: :created
    end
end
