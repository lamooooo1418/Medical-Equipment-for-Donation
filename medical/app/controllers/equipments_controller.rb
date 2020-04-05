class EquipmentsController < ApplicationController
    before_action :authenticate_user!, only: [:new]
    before_action :find_equipment, except: [:index, :new, :create]
    
    def index
    if user_signed_in?
        @equipments=current_user.equipments.all
    
        else
        @equipments = Equipment.all
   
    end 
end 
    def show    
        if @equipment.user != current_user
            flash[:notice]= 'Not alowed!'
            redirect_to equipments_path
        end
        #@equipment = Equipment.find(params[:id])
    end
       
    def new
        @equipment= Equipment.new
    end
        
    def create  
        @equipment =Equipment.create(equipment_params)
        @equipment.user = current_user
         #@equipment.user = User.find(equipment_params[:user_id])
        if @equipment.save
           redirect_to @equipment
        else
           render 'new'
        end
         #@equipment.user = current_user
         
    end

    def edit
         @equipment = Equipment.find(params[:id])
    end
                  
  # def update 
     #   equipment = Equipment.find(params[:id])
      #  equipment.update(params.require(:equipment).permit(:name, :description, :time_of_use, :phone))
       # redirect_to equipment
  # end
        
    def destroy
         @equipment = Equipment.find(params[:id]).delete
         redirect_to root_path 
    end

    private
    def equipment_params
        params.require(:equipment).permit(:name, :description, :time_of_use, :phone)
    end

    def find_equipment
        @equipment = Equipment.find(params[:id])
    end
    
end