class SessionController < ApplicationController
    def new
        @user = User.new
    end
    def create
        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to gossips_path, notice: "Successfully logged in"
        else
            flash.now[:alert] = "Invalid email or password"
            render :new
        end
    end
    def destroy 
        session[:user_id] = nil
        redirect_to gossips_path, notice: "Successfully logged out"
    end
end