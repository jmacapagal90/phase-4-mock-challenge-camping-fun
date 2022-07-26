class CampersController < ApplicationController

    before_action :set_camper, only: [:show]

    def index
        render json: Camper.all
    end

    def show
        render json: @camper,serializer: CamperWithActivitySerializer
    end

    def create
        new_camper = Camper.create!(camper_params)
        render json: new_camper,status: :created
    end

    private 

    def set_camper
        @camper = Camper.find(params[:id])
    end

    def camper_params
        params.permit(:name,:age)
    end

end
