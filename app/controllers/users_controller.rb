class UsersController < ApplicationController
    
    def new
        @user = User.new
    end

    def create
        @user = User.create(email: params[:user][:email], password: params[:user][:password])
        if @user.errors.any?
            redirect_to new_user_path
        end
        # redirect_to user_show_path
    end

end
