Rails.application.routes.draw do
  root 'equipments#index'
  
  resources :equipments
 
end
