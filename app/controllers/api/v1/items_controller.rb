class Api::V1::ItemsController < ApplicationController

    before_action :set_box

    def index
        @items = @box.items
        render json: @items
    end

    def create
        @item = @box.items.new(item_params)
        if @box.update_box_amount(@item) != 'Quantity not enough.'
            @item.save
            # render json: @item
            render json: @box
        else
            render json: {error: 'Quantity not enough.'} 
        end
    end

    def show
        @item = Item.find(params[:id])
        # @item = @box.items.find_by(id: params[:id])
        render json: @item
    end

    def destroy
        @item = Item.find(params["id"])
        @box = Box.find(@item.box_id)
        if @box.update_box_amount_on_delete(@item)
            @item.destroy
            render json: @box
        else
            render json: {error: 'Quantity not enough.'} 
        end
    end

    private

    def set_box
        @box = Box.find(params[:box_id])
    end

    def item_params
        params.require(:item).permit(:box_id, :description, :style, :color, :size, :quantity, :image_url, :kind)
    end

end
