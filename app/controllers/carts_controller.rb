class CartsController < ApplicationController

    skip_before_action :verify_authenticity_token, dependent: :nullify

    def show
        if current_user.cart
            @cart = current_user.cart.carts_shoes
            prices = @cart.map {|x| Shoe.find_by(id: x.shoe_id).price }
            @total = prices.inject(0) { |sum, x| sum + x }
        end
    end 

    def create
        shoe = Shoe.find(params[:shoeId])
        size = Size.find_by(shoe_size: params[:shoeSize])
        if current_user.cart
            # shoe = Shoe.find_by(id: data_sent.values.second)
            # @cart = current_user.cart
            # @cart.shoes << shoe
            cart = current_user.cart
        else
            cart = Cart.create(user_id: current_user.id)
        end

        item = cart.carts_shoes.build(size: size, shoe: shoe)
        if item.save
            render json: item
        else
            render json: {errors: item.errors.full_messages}
        end

        # for an order shoe size will equal to  data_sent.values.first
        # Cart.shoes.to_a , then array.shift() to remove element, cart.shoes = array
    end
    
    def destroy
        data_sent = ActiveSupport::JSON.decode(request.body.read)
        shoe = Shoe.find_by(id: data_sent.values.first)
        cart = current_user.cart
        cart_array = cart.shoes.to_a
        cart_array.delete_if {|x| x.id == shoe.id}
        cart.shoes = cart_array
        cart.save
        cart.carts_shoes.each {|x| x.destroy if x.shoe_id.nil? }
    end

end