class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            # redirect_to user_show_path
        else
            if user.nil?
                flash[:notice] = "This e-mail doesn't exist in our database!"
                redirect_to action: "new"
            elsif
                params[:password].blank?
                flash[:notice] = "Password can't be blank!"
                redirect_to action: "new"
            elsif
                !user.authenticate(params[:password])
                flash[:notice] = "Incorrect password!"
                redirect_to action: "new"
            end
        end
    
    end

end
