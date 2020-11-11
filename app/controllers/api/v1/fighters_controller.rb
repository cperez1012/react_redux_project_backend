require 'pry'
class Api::V1::FightersController < ApplicationController
  before_action :set_fighter, only: [:show, :update, :destroy]

    def index
      if logged_in?

      # Needs to be array of fighters in db
        # binding.pry
        # @list = List.find(params[:list_id])
        # @list = List.find(params[:list_id])
        @fighters = current_user.fighters
        # @fighters = Fighter.all.sort_by{ |f| f.name }

        # render json: Fighter.new(@fighters)

        render json: FighterSerializer.new(@fighters).serialized_json
      else
        render json: {
            error: "You must be logged in to see fighters"
        }
      end
    end

    # def new
    #   @list = List.find(params[:list_id])
    #   @fighters = @list.fighters.build
    #   render json: FighterSerializer.new(@fighters)
    # end

    def show
      render json: @fighter
    end

    def create
        @list = List.find(params[:list_id])
      # Use find by or create by to prevent duplicates
        @fighter = @list.fighters.build(fighter_params)
        # binding.pry
        if @fighter.save
          # render json: Fighter.new(@fighter), status: :accepted
          render json: FighterSerializer.new(@fighter).serialized_json, status: :accepted
        else
          render json: {errors: @fighter.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def update
      if @fighter.update(fighter_params)
        # render json: Fighter.new(@fighter), status: :ok
        render json: FighterSerializer.new(@fighter), status: :ok
      else
        render json: @fighter.errors, status: :unprocessible_entity
      end
    end

    def destroy
      @fighter.destroy
    end

    private

    def set_fighter
      @fighter = Fighter.find(params[:id])
    end

    def fighter_params
      params.require(:fighter).permit(:name, :alias, :nationality, :division, :stance, :height, :reach, :status, :champion, :win, :loss, :draw, :ko)
    end

end
