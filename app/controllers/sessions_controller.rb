class SessionsController < ApplicationController

    skip_before_action :verified_user, only: [:new, :create]
    
    def new
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id 
            flash[:success] = "Welcome explorer, You have signed in."
            redirect_to users_path(user)
        else
            flash.now[:danger] = "I am sorry. Our Starfinder AI can not find that login information."
            render "new"
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:success] = "You have signed out. See you soon explorer."
        redirect_to root_path
    end

end
