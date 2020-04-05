class HospitalsController < ApplicationController
    def index
        @hospitals =  Hospital.all  
    end 

    def new
        equipment=  Hospital.new
   end
       
   def create
       Hospital.create( hospital_params)
         redirect_to  hospitals_path
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


