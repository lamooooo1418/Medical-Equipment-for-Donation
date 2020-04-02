Rails.application.routes.draw do
  root 'equipments#index'
  get "equipments", to: "equipments#index"
  resources :equipments
 
end
