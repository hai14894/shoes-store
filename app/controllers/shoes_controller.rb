class ShoesController < ApplicationController
    def index 
      
        @shoes = Shoe.all
    end

    def show
        @shoe= choose_shoe
    end

    def create
        new_shoe = Shoe.create(brand: params["brand"], model: params["model"], condition: params["condition"], price: params["price"],description: params["description"])
        redirect_to home_path
    end

    def update
        updated_shoe = Shoe.update(params["id"],brand: params["brand"], model: params["model"], condition: params["condition"], price: params["price"],description: params["description"])

    end
    
    def destroy 
        destroyed_shoe =choose_shoe.destroy

    end
end

private
def choose_shoe
    Shoe.find(params["id"])
end
