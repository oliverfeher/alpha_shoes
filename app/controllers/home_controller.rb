class HomeController < ApplicationController
    def index
        #pass down @shoes to render partials for each of them in the carousel
        @shoes = Shoe.first, Shoe.second, Shoe.third
    end
end
