class ReviewsController < ApplicationController

    def new
        @shoe = Shoe.find_by(id: params[:shoe_id])
    end

    def create
    end

end