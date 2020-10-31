class Api::V1::FighterlistsController < ApplicationController

    def index
        @fighterlists = Fighterlists.all
    end

    # def show

    # end

    # def create
    
    # end

    # def update
    
    # end

    # def destroy

    # end
end
