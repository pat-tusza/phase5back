class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token


    def index
        @all = User.all
        render json: @all
    end

    def create
        @user = User.create(user_params)
        render json: @user
    end

    private

    def user_params
        params.permit(:username)
    end

end
