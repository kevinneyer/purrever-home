class FlowController < ApplicationController

    def transition
        if logged_in?
            render :transition
        else
            flash[:mob] = "You need to be logged in as an employee!"
            redirect_to listings_path
        end
    end
    
    def success
    end 
end