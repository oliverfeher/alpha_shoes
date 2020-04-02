class ShoesController < ApplicationController
    def index
        @shoes = Shoe.all
        @shoes_asc = Shoe.all.ordered_by_price_asc
        @shoes_desc = Shoe.all.ordered_by_price_desc
        if logged_in?
            render "index"
        else
            redirect_to users_login_path
        end
    end

    def show
        @shoe = Shoe.find_by(id: params[:id])
    end
end