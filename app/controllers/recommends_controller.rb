class RecommendsController < ApplicationController
    before_action :all_recommends, only: [:index, :create]
    
    def index
        @recommends = Recommend.all
        @recommend = Recommend.new
        respond_to do |format|
            format.html
            format.json
        end
    end
    
    def new
        @recommend = Recommend.new
    end
    
    def create
        @recommend = Recommend.create(recommend_params)
    end

    def update
       @recommend = Recommend.find(params[:id])
       @recommend.update(recommend_params)
    end
  private
    
    def all_recommends
        @recommends = Recommend.all
    end
    
    def recommend_params
        params.require(:recommend).permit(:name, :qty)
    end
end
