class CatsController < ApplicationController
    def index
        @cats = Cat.all
    end

    def new
        @cat = Cat.new
    end

    def create
        @cat = Cat.create(cat_params)

        redirect_to new_listing_path
    end

    private

    def cat_params
        params.require(:cat).permit!
    end


end
