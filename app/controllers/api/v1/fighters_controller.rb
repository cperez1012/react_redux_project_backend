require 'pry'
class Api::V1::FightersController < ApplicationController
  before_action :set_fighter, only: [:show, :update, :destroy]

    def index
      # Needs to be array of fighters in db
        # binding.pry
        @fighters = Fighter.all.sort_by{ |f| f.name }

        render json: FighterSerializer.new(@fighters)
    end

    # def show
    #   render json: @fighter
    # end

    # def create
    #   # Use find by or create by to prevent duplicates
    #     @fighter = Fighter.find_or_create_by(fighter_params)
    #     # binding.pry
    #     if @fighter.save
    #       render json: FighterSerializer.new(@fighter).serialized_json, status: :accepted
    #     else
    #       render json: {errors: @fighter.errors.full_messages}, status: :unprocessible_entity
    #     end
    # end

    # def update
    #   if @fighter.update(fighter_params)
    #     render json: FighterSerializer.new(@fighter), status: :ok
    #   else
    #     render json: @fighter.errors, status: :unprocessible_entity
    #   end
    # end

    # def destroy
    #   @fighter.destroy
    # end

    private

    def set_fighter
      @fighter = Fighter.find(params[:id])
    end

    def fighter_params
      params.require(:fighter).permit(:name, :alias, :nationality, :division, :stance, :height, :reach, :status, :champion, :win, :loss, :draw, :ko)
    end

end
