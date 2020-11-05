class Api::V1::FighterlistsController < ApplicationController

    def create
        fl = Fighterlist.new(list_id: params[:list_id], fighter_id: params[:fighter_id])
        if fl.save
            fighter = Fighterlist.find(params[:fighter_id])
            render json: fighter
        else
            render json: {errors "Error adding fighter to list"}
        end
    end

end
