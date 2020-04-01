class ReviewsController < ApplicationController

    def new
        @shoe = Shoe.find_by(id: params[:shoe_id])
        @review = Review.new
    end

    def create
        @shoe = Shoe.find_by(id: params[:shoe_id])
        review = @shoe.reviews.build(review_params)
        review.save
    end
    

    private

    def review_params
        params.require(:review).permit(:content, :rating, :user_id)
    end

end