class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path
        else

            # if can't find any user with the given e-mail / or e-mail field was blank
            if user.nil?
                flash[:notice] = "This e-mail doesn't exist in our database!"
                redirect_to action: "new"

            # if password blank display that it cannot be blank
            elsif
                params[:password].blank?
                flash[:notice] = "Password can't be blank!"
                redirect_to action: "new"

            # if given password doesn't authenticate then display Inccorect PWD
            elsif
                !user.authenticate(params[:password])
                flash[:notice] = "Incorrect password!"
                redirect_to action: "new"
            end
        end
    end

    def destroy
        session.clear
        redirect_to root_path
    end

end
