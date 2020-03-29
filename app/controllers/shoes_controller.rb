class ShoesController < ApplicationController
    def index
        @shoes = Shoe.all
        if logged_in?
            render "index"
        else
            redirect_to users_login_path
        end
    end
end