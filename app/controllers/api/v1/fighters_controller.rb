class Api::V1::FightersController < ApplicationController
  # before_action :set_fighter, only: [:show, :update, :destroy]

    def index
      if logged_in?
        # @fighters = Fighter.all
        @fighters = current_user.fighters
        # binding.pry
        # options = {
        #   #include associated List
        #   include: [:list]
        # }
        # render json: FighterSerializer.new(@fighters, options)
        render json: FighterSerializer.new(@fighters)
      else
        render json: {
          error: "You must be logged in to see your chosen fighters"
        }
      end
    end

    def show
      render json: @fighter
    end

    def create
        # @fighter = Fighter.new(fighter_params)
        @fighter = current_user.fighters.build(fighter_params)
        # binding.pry
        if @fighter.save
          render json: FighterSerializer.new(@fighter).serialized_json, status: :accepted
        else
          render json: {errors: @fighter.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def update
      if @fighter.update(fighter_params)
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
        params.require(:fighter).permit(:name, :alias, :nationality, :division, :stance, :height, :reach, :status, :champion, :win, :loss, :draw, :ko, :list_id)
    end

end
