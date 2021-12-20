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


=begin

- The code starts by declaring the class Api::V1::ItemsController < ApplicationController.
- This is a controller that will be used to handle requests for items from the box.
- The before_action :set_box tells Rails what code should run before any other actions in this controller are called.
- In this case, it sets up an instance variable @items with all of the items in the box and then renders json: @items.
- The index action returns an array of all of the items in the box, which can then be rendered on screen using JSON or XML depending on how you want to display them.
- The create action will create a new item.
- The show action will display the selected item.
- The destroy action will delete the item requested to be deleted.
- The code also contains before_action :set_box which will be executed before the index action, this will set the box for the item.

=end
