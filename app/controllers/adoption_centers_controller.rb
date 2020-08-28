class AdoptionCentersController < ApplicationController

    def index
        @adoption_centers = AdoptionCenter.all
    end

    def show
        @adoption_center = AdoptionCenter.find(params[:id])
    end

end
