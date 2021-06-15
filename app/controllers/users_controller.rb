class UsersController < ApplicationController
    
    skip_before_action :verified_user, only: [:new, :create]
    before_action :set_user, only: [:edit, :update]

    def new
        @user = User.new 
    end

    def create
        @user = User.new(user_params)
        if @user.save 
            flash[:success] = "Welcome to Starfinder 2.0 #{@user.username}"
            session[:user_id] = @user.id 
            redirect_to root_url 
        else
            render "new"
        end
    end

    def edit 
    end

    def update
        if @user.update(user_params)
            flash[:success] = "Your account was updated successfully"
            redirect_to root_url
        else
            render "edit"
        end 
    end

    private 

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end