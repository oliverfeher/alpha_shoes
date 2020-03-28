class DetailsController < ApplicationController
    def new
    end

    def show
    end

    def create
        @detail = Detail.create(user_id: current_user.id, city: params[:city], address: params[:city], state: params[:state], full_name: params[:full_name])
        redirect_to :root

    end
end