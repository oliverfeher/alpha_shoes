class ApplicationController < ActionController::Base

    #Allows to use current_user method in the actionviews
    helper_method :current_user, :logged_in?, :cart_items, :find_shoe, :find_size
    
    
    # Using it for before_action: auth_req... user only able to see the page if user is logged_in
    def authentication_required
        if !logged_in?
            redirect_to login_path
        end
    end
    
    def logged_in?
        !!current_user
    end
    
    def current_user
            @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def cart_items
        if current_user.cart
            if current_user.cart.shoes.length > 0
                current_user.cart.shoes.length
            else
                return 0
            end
        end
    end

end
