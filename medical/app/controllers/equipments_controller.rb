class EquipmentsController < ApplicationController

    def index
        @equipments = Equipment.all  
    end 
       
    def show
        @equipment = Equipment.find(params[:id])
    end
       
    def new
        equipment= Equipment.new
    end
        
    def create
         Equipment.create(equipment_params)
         redirect_to equipments_path
    end

    def edit
         @equipment = Equipment.find(params[:id])
    end
                  
    def update
        equipment = Equipment.find(params[:id])
        equipment.update(params.require(:equipment).permit(:name, :description, :time_of_use, :phone))
        redirect_to equipment
    end
        
    def destroy
         @equipment = Equipment.find(params[:id]).delete
         redirect_to root_path 
    end

    private
    def equipment_params
    params.require(:equipment).permit(:name, :description, :time_of_use, :phone)
    end
end