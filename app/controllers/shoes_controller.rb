class ShoesController < ApplicationController
    before_action :choose_shoe, only: [:show, :edit, :update, :destroy]

    def index 
      
        @shoes = Shoe.all
    end

    def show
        @shoe= choose_shoe
    end

    def new 
        set_conditions
        @shoe = Shoe.new

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
    def edit 
        set_conditions
    end
end

private
def choose_shoe
    Shoe.find(params["id"])
end
def set_conditions 
    @conditions = Shoe.conditions.keys
end