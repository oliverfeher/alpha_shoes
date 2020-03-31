class UsersController < ApplicationController
    
    def new
        @user = User.new
    end

    def create
        @user = User.create(email: params[:user][:email], password: params[:user][:password])
        if @user.errors.any?
            # redirect_to new_user_path
            flash[:user_errors] = @user.errors.full_messages
            redirect_to action: "new"
        else
            session[:user_id] = @user.id   #Upon successful sign-up user is logged in automatically!
            if current_user.detail
                redirect_to :root
            else
                redirect_to new_user_details_path(current_user)
            end
        end
    end

    def edit
    end

    def update
        current_user.update(email: params[:email])
        current_user.detail.update(full_name: params[:full_name], address: params[:address], city: params[:city], state: params[:state])
        redirect_to edit_user_path(current_user)
    end

end
