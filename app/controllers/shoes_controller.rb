class ShoesController < ApplicationController
    def index
        @shoes = Shoe.all
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