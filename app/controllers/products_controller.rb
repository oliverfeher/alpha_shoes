class ProductsController < ApplicationController

    def index
        if logged_in?
            render "index"
        else
            redirect_to users_login_path
        end
    end

end