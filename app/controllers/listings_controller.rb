class ListingsController < ApplicationController
  
    before_action :find_listing, only: [:show, :edit, :update, :destroy]
    before_action :logged_in?
    def index
        @listings = Listing.all 
    end

    def show
        @cat = @listing.cat
    end

    def new
      @listing = Listing.new
      @cats = Cat.all
      @adoption_centers = AdoptionCenter.all
    end

    def create
        @listing = Listing.create(listings_params)

        if @listing.valid?
            redirect_to listing_path(@listing)
        else 
           flash[:errors] = @listing.errors.full_messages
            redirect_to new_listing_path
        end
    end

    def edit
        @cats = Cat.all
        @adoption_centers = AdoptionCenter.all
    end

    def update
        @listing.update(listings_params)
        redirect_to listing_path(@listing)
    end

    def destroy
        @listing.destroy
        redirect_to listings_path
    end


    private

    def find_listing
      @listing = Listing.find(params[:id])
    end

    def listings_params
      params.require(:listing).permit!
    end 


end 
