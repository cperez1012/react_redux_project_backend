class Api::V1::ListsController < ApplicationController
    before_action :set_list, only: [:show, :update, :destroy]

    def index
        if logged_in?

            @lists = current_user.lists

            # render json: List.new(@lists)

            render json: ListSerializer.new(@lists,{include: [:fighters]}).serialized_json
        else
            render json: {
                error: "You must be logged in to see lists"
            }
        end

    end

    def show
        render json: @list
    end

    def create
        # @list = List.new(list_params)
        @list = current_user.lists.build(list_params)
        if @list.save

            # render json: List.new(@list, status: :created)
            render json: ListSerializer.new(@list), status: :created
        else
            error_resp = {
                error: @list.errors.full_messages.to_sentence
                }
            render json: error_resp, status: :unprocessable_entity
        end
    end

    def update
        if @list.update(list_params)
            # render json: List.new(@list, status: :ok)
            render json: ListSerializer.new(@list), status: :ok
        else
            error_resp = {
                error: @list.errors.full_messages.to_sentence
              }
            render json: error_resp, status: :unprocessable_entity 
        end       
    end

    def destroy
        if @list.destroy
            render json: { data: "List was successfully deleted!" }, status: :ok
        else
            error_resp = {
                error: "List not found and not deleted!"
              }
            render json: error_resp, status: :unprocessable_entity
        end 
    end
   
    private

    def set_list
        @list = List.find(params[:id])
    end

    def list_params
       params.require(:list).permit(:title) 
    end

end
