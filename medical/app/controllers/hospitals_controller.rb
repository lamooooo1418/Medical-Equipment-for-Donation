class HospitalsController < ApplicationController
    before_action :authenticate_user!, only: [:new]
    before_action :find_equipment, except: [:index, :new, :create]
    def index
       if user_signed_in?
            
        @hospitals =  current_user.hospitals.all  
        else
            @hospitals = Hospital.all
        end 
    end
 
    
    def new
        equipment=  Hospital.new
    end
       
    def create  
        @hospital =Hospital.create(hospital_params)
        @hospital.user = current_user
        if @hospital.save
           redirect_to hospitals_path
        else
           render 'new'
        end
    end 
   
    def destroy
        @hospital =Hospital.find(params[:id]).delete
        redirect_to hospitals_path 
    end

    private
    def  hospital_params
        params.require(:hospital).permit(:hospital_name ,:equipment_name,:quantitity,:phone)
    end
end

