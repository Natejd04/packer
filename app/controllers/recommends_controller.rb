class RecommendsController < ApplicationController

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
end
