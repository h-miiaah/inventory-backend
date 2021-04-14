class Api::V1::BoxesController < ApplicationController

    def index
        @boxes = Box.all
        render json: @boxes
    end

    def create
        binding.pry
        @box = Box.new(box_params)
        if @box.save
            render json: @box
        else
            render json: {error: 'Unable to create box, please try again.'}
        end
    end

    def show
        @box = Box.find(params[:id])
        render json: @box
    end

    def destroy
        @box = Box.find(params[:id])
        @box.destroy       
    end

    private

    def box_params
        params.require(:box).permit(:name, :amount)
    end

end
