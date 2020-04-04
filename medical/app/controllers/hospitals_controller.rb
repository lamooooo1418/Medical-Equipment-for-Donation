class HospitalsController < ApplicationController
    before_action :authenticate_user!, only: [:new]
    def index
        @hospitals =  Hospital.all  
    end 
   
    def show
        @equipment =  Hospital.find(params[:id])
    end
       
    def new
        equipment=  Hospital.new
    end
        
    def create
        Hospital.create( hospital_params)
         redirect_to  hospitals_path
    end

    def edit
         @hospital =  Hospital.find(params[:id])
    end
                  
    def update
        hospital =  Hospital.find(params[:id])
        hospital.update(params.require(:hospital).permit(:hospital_name ,:equipment_name,:quantitity,:phone))
        redirect_to  hospital
    end
        
    def destroy
         @hospital =Hospital.find(params[:id]).delete
         redirect_to root_path 
    end

    private
    def  hospital_params
    params.require(:hospital).permit(:hospital_name ,:equipment_name,:quantitity,:phone )
    end
    











end
