class HikersController < ApplicationController

    def new
       @hikers = Hiker.new 
    end
    
    def create 
       @hikers = Hiker.create(hikers_params)
        flash[:notice] = "The Hiker was created"
        render :new
    end
    
    def index
        @hikers = Hiker.all
    end
    
    def show
        @hikers = Hiker.find(params[:id])
    end
    
 private
        def hikers_params
            params.require(:hiker).permit(:name, :backpack_size, :volume)
    end
end
