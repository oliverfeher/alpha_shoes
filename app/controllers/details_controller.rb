class DetailsController < ApplicationController
    
    def new
        @detail = Detail.new
    end

    def show
    end

    def create
        @detail = Detail.create(details_params)
        binding.pry
        redirect_to "/"
    end

    private

    def details_params
        params.require(:detail).permit(:city, :address, :state, :full_name, :user_id)
    end

end