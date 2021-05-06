class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by_username(params[:username])
        if user
            session[:user_id] = user.id
            redirect_to users_path
        else
            render "new"
        end
    end

    def destroy
    end

end
