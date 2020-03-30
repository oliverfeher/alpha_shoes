class CartsController < ApplicationController

    skip_before_action :verify_authenticity_token, dependent: :nullify

    def show
    end 

    def create
        data_sent = ActiveSupport::JSON.decode(request.body.read)
        if current_user.cart
            shoe = Shoe.find_by(id: data_sent.values.second)
            @cart = current_user.cart
            @cart.shoes << shoe
        else
            @cart = Cart.create(user_id: current_user.id)
            @cart.shoes << shoe
        end
        # for an order shoe size will equal to  data_sent.values.first
        # Cart.shoes.to_a , then array.shift() to remove element, cart.shoes = array
    end


end