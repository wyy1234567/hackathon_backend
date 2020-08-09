class LocationsController < ApplicationController

    def index
        render json: Location.all 
    end

    def show
        location = Location.find(params[:id])
        render json: location
    end

    def create
        location = Location.create(location_params)
        render json: location
    end

    private
    def location_params
        params.require(:location).permit!
    end

end
