class ApplicationController < ActionController::Base


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
        @current_user ||= User.find(session[:user_id])
    end

end
