class ReviewsController < ApplicationController

    def new
        @shoe = Shoe.find_by(id: params[:shoe_id])
        @review = Review.new
    end

    def create
        @shoe = Shoe.find_by(id: params[:shoe_id])
        review = @shoe.reviews.build(review_params)
        review.save
        redirect_to shoe_reviews_path(@shoe)
    end
    
    def show
        @shoe = Shoe.find_by(id: params[:shoe_id])
        avg_arr = @shoe.reviews.map { |x| x.rating }
        @avg = avg_arr.inject { |sum, el| sum + el }.to_f / avg_arr.size 
    end
    

    private

    def review_params
        params.require(:review).permit(:content, :rating, :user_id)
    end

end