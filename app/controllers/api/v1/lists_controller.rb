class Api::V1::ListsController < ApplicationController

    def index
        @lists = List.all
        render json: ListSerializer.new(@lists)
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
