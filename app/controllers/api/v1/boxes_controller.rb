class Api::V1::BoxesController < ApplicationController

    def index
        @boxes = Box.all
        render json: @boxes
    end

    def create
        @box = Box.new(box_params)
        if @box.save
            render json: @box
        else
            render json: {error: 'Unable to create box, please try again.'}
        end
    end

    def update
        @box = Box.find(params[:id])
        @box.update(name: params["box"]["name"])
        @box.save
        render json: @box
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


=begin

- The code starts with a controller class called Api::V1::BoxesController.
- This is the controller that will be used to handle all requests for Box objects.
- The index action of this controller returns an array of all the boxes in the database
- The create action creates a new box object using params passed in as arguments.
- The update action updates an existing box by changing its name, and saves it back into the database.
- The show action displays information about a specific box from our database.
- The private method is where we define what parameters are required when creating or updating a Box object: name and amount .
- The code will render a JSON response with the following:
- { "boxes": [ { "name": "Box 1", "amount": 100 }, { "name": "Box 2", "amount": 200 } ] }

=end
