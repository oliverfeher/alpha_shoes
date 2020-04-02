class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by(email: params[:email])
        if user
            if user.authenticate(params[:password])
                session[:user_id] = user.id
                redirect_to root_path
                # if password blank display that it cannot be blank
            elsif params[:password].blank?
                flash[:notice] = "Password can't be blank!"
                redirect_to action: "new"
            # if given password doesn't authenticate then display Inccorect PWD
             elsif !user.authenticate(params[:password])
                flash[:notice] = "Incorrect password!"
                redirect_to action: "new"
            end
        
        elsif
            ouser = User.find_or_create_by(id: auth['info']['email']) do |u|
                u.email = auth['info']['email']
                u.password = SecureRandom.hex(32)
            end
            session[:user_id] = ouser.id
            if current_user.detail
                redirect_to root_path
            else
                redirect_to new_user_details_path(ouser)
            end
        else user.nil?
            flash[:notice] = "This e-mail doesn't exist in our database!"
            redirect_to action: "new"
        end
    end

    def destroy
        session.clear
        redirect_to root_path
    end

    private 

    def auth
        request.env['omniauth.auth']
    end

end
