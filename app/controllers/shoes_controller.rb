class ShoesController < ApplicationController
    def index 
      
        @shoes = Shoe.all
    end

    def show
        @shoe= choose_shoe
    end

    def create

    end

    def update

    end
    
    def destroy

    end
end

private
def choose_shoe
    Shoe.find(params["id"])
end
