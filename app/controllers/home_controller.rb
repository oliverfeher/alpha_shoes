class HomeController < ApplicationController
    def index
        @shoe1 = Shoe.all.first
        @shoe2 = Shoe.all.second
        @shoe3 = Shoe.all.third
    end
end
