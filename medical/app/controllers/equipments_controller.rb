class EquipmentsController < ApplicationController

    def index 
    @equipments = Equipment.all  
    end 

    def show
        @equipment = Equipment.find(params[:id])
      end
      def new
        @equipment = Equipment.new
        end 
        def create 
        @equipment =  Equipment.new(equipment_params)
        @equipment.save
        redirect_to @equipment
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
            equipment = Equipment.find(params[:id])
            equipment.destroy
          redirect_to equipment
        end
      private
      def equipment_params
        params.require(:equipment).permit(:name, :description, :time_of_use, :phone)
      end

 














end
