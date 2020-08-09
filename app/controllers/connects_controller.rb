class ConnectsController < ApplicationController

    def create
    end

    def update
    end

    private
    def connect_params
        params.require(:connect).permit!
    end
end
