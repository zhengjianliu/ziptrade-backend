class ItemsController < ApplicationController
    def index
        items = Item.all
        render json: items
    end

    def create
        item = Item.create(item_params)
        render json: item
    end

    def destroy
      item = Item.find(params[:id])
      item.destroy
      render json: item
    end

    def edit
        item = Item.find_by(id: params[:id])
        render json: item
    end

    def update
        item = Item.find_by(id: params[:id])
        item.update(item_params)
        render json: item
    end

    private

    def item_params
        params.require(:item).permit!
    end
end
