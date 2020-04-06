class OrdersController < ApplicationController
   
    def create

        #Create a new order by collecting all items in the current_user's cart, calculating it's total amount and displaying the the timestamp
        #Upon creating, cart is being dumped
        order = Order.new
        items = []
        current_user.cart.carts_shoes.each {|item| items <<  item}
        shoes = items.map {|shoe| Shoe.find_by(id: shoe.shoe_id)}
        prices = shoes.map {|shoe| shoe.price}
        total = prices.inject(0){|sum,x| sum + x }
        order.user_id = current_user.id
        order.total_amount = total
        order.save
        current_user.cart.carts_shoes.destroy_all
        redirect_to user_orders_path
    end

    def show
        @orders = current_user.orders
    end

end