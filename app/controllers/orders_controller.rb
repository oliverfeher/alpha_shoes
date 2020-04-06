class OrdersController < ApplicationController
   
    def create
        order = Order.new
        items = []
        current_user.cart.carts_shoes.each {|item| items <<  item}
        shoes = items.map {|shoe| Shoe.find_by(id: shoe.shoe_id)}
        prices = shoes.map {|shoe| shoe.price}
        total = prices.inject(0){|sum,x| sum + x }
        order.user_id = current_user.id
        order.total_amount = total
        order.save
    end

    def show
        @orders = current_user.orders.each {|order| Order.find_by(id: order.id)}
    end

end