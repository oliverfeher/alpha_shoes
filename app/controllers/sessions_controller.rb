class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by(email: params[:user][:email])
        session[:user_id] = user.id
    end

end
