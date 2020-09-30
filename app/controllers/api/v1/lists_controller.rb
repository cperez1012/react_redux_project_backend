class Api::V1::ListsController < ApplicationController

    def index
        if logged_in?

            @lists = current_user.lists

            render json: ListSerializer.new(@lists)
        else
            render json: {
                error: "You must be logged in to see lists"
            }
        end

    end

    # def create
    #     @list = List.new(list_params)
    #     if @list.save
    #         render json: ListSerializer.new(@list)
    #     else
    #         render json: ListSerializer.new(@list.errors), status: 400
    #     end
    # end
    
end
