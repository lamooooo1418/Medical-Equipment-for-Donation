class HospitalsController < ApplicationController
    def index
        if user_signed_in?
            @Hospitals=current_user.hospitals.all
             else
            @hospitals = Hospital.all
       
        end 
    end 
       
    def new
        hospitals=  Hospital.new
    end
        
    def create
        Hospital.create( hospital_params)
         redirect_to  hospitals_path
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
