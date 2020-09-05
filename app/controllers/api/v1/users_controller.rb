require 'pry'
class Api::V1::UsersController < ApplicationController
    # skip_before_action :authorized, only: [:create]\
    before_action :set_user, only: [:show]

    # GET /users
    def index
        # @users = User.all
        @users = User.all
        render json: @users
        # render json: UserSerializer.new(@users)
    end

    def show
        # @user = User.find(params[:id])
        user_json = UserSerializer.new(@user).serialized_json
        # binding.pry
        render json: user_json
    end

    def create
        @user = User.new(user_params)
        if @user.save
        # if @user.valid?
            # @token = encode_token(user_id: @user.id)
            # render json: { user: UserSerializer.new(@user) }, status: :created
            render json: @user, status: :created, location: @user
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    # def update
    #     if @user.update(user_params)
    #         render json: UserSerializer.new(@user)
    #     else
    #         render json: UserSerializer.new(@user.errors, status: 400)
    #     end
    # end

    # def destroy
    #     @user.destroy
    # end

    # def find
    #     @user = User.find_by(email: params[:user][:email])
    #     if @user
    #         render json: UserSerializer.new(@user)
    #     else
    #         render json: UserSerializer.new(@user.errors.full_messages)
    #     end
    # end

    private

    def set_user
        # @user = User.find_by(id: params[:id])
        @user = User.find_by(id: params[:id])
    end

    def user_params
        params.require(:user).permit(:username, :email, :password, :bio, :image_url)
    end
end
