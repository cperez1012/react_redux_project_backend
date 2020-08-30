class Api::V1::FightersController < ApplicationController

    def index
        @fighters = Fighter.all
        options = {
          #include associated List
          include: [:list]
        }
        render json: FighterSerializer.new(@fighters, options)
    end

    def create
        @fighter = Fighter.new(fighter_params)
        if @fighter.save
          render json: FighterSerializer.new(@fighter), status: :accepted
        else
          render json: {errors: @fighter.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def fighter_params
        params.require(:fighter).permit(:name, :alias, :nationality, :division, :stance, :height, :reach, :status, :champion, :win, :loss, :draw, :ko, :list_id)
    end

end
