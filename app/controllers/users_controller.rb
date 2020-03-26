class UsersController < ApplicationController
    
    def new
        @user = User.new
    end

    def create
        @user = User.create(email: params[:user][:email], password: params[:user][:password])
        binding.pry
    end

end
