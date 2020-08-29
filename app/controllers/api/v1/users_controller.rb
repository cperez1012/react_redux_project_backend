class Api::V1::UsersController < ApplicationController
    before_action :set_user, only: [:show, :update]

    def index
        # @users = User.all
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
    end

    def create
        @user = User.new(user_params)
        if @user.valid? && @user.save
            render json: @user
        else
            render json: @user.errors, status: 400
        end
    end

    def update
        if @user.update(user_params)
            render json: @user
        else
            render json: @user.errors, status: 400
        end
    end

    def destroy
        @user.destroy
    end

    def find
        @user = User.find_by(email: params[:user][:email])
        if @user
            render json: @user
        else
            @user.errors.full_messages
        end
    end

    private

    def set_user
        @user = User.find_by(id: params[:id])
    end

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end
