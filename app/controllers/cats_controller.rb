class CatsController < ApplicationController
    def index
        @cats = Cat.all
    end

    def new
        @cat = Cat.new
    end

    def create
        @cat = Cat.create(cat_params)
        if @cat.valid?
            redirect_to new_listing_path
        else
            flash[:errors] = @cat.errors.full_messages
            redirect_to new_cat_path
        end  
    end

    private

    def cat_params
        params.require(:cat).permit!
    end


end
