class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def show
        @user = User.find(params[:id])
    end

    def index
        @users = User.all
        @events = Event.all
    end

    def create
        @user = User.new(user_params)

        if @user.save
            flash[:notice] = 'Login attempt failed.'
            redirect_to root_path
        else
            flash[:notice] = 'Login attempt failed.'
            render :new
        end
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end
end
