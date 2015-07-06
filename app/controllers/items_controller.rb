class ItemsController < ApplicationController
    before_action :all_items, only: [:index, :create]
#    respond_to :html, :js
    
    def index
        @items = Item.all
        @item = Item.new
        respond_to do |format|
            format.html
            format.json
        end
        
    end
    
    def new
        @item = Item.new
    end
    
    def create
        @item = Item.create(item_params)
    end
    
    def update
       @item = Item.find(params[:id])
       @item.update(item_params)
    end
    
  private
    
    def all_items
        @items = Item.all
    end
    
    def item_params
        params.require(:item).permit(:name, :hiker_id)
    end

end
