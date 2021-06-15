class SessionsController < ApplicationController

    skip_before_action :verified_user, only: [:new, :create]

    def new
    end

    def create
        user = User.find_by(email: params[:email])
        if user.try(:authenticate, params[:password])
            session[:user_id] = user.id 
            flash[:success] = "Welcome explorer, You have signed in."
            redirect_to "/"
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
