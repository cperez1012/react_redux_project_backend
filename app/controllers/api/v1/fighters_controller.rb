require 'pry'
class Api::V1::FightersController < ApplicationController
  before_action :set_fighter, only: [:show, :update, :destroy]

    def index
      if logged_in?

        @fighters = current_user.fighters.sort_by{ |fighter| fighter.ranking }

        render json: FighterSerializer.new(@fighters).serialized_json
      else
        render json: {
            error: "You must be logged in to see fighters"
        }
      end
    end

    def show
      render json: @fighter
    end

    def create
        @fighter = Fighter.create(fighter_params)

        if @fighter.save

          binding.pry
      
          render json: FighterSerializer.new(@fighter).serialized_json, status: :created
        else
          render json: {errors: @fighter.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
      if @fighter.update(fighter_params)
        
        render json: FighterSerializer.new(@fighter), status: :ok
      else
        render json: @fighter.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @fighter.destroy
      render json: [
        notice: "Successfully Deleted Fighter!"
      ], status: :ok
    end

    private

    def set_fighter
      @fighter = Fighter.find(params[:id])
    end

    def fighter_params
      params.require(:fighter).permit(:name, :imageurl, :alias, :nationality, :division, :stance, :height, :reach, :status, :champion, :win, :loss, :draw, :ko, :list_id, :ranking)
    end

end
