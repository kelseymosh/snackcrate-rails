class UsersController < ApplicationController
    def create
        @user = User.create(
            username: params[:username],
            password: params[:password],
        )
        render json: { user: @user }
    end

    def index
        @users = User.all 
        render json: @users
    end
end
