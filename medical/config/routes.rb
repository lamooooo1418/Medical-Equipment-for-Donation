Rails.application.routes.draw do root to: "equipments#index"
  root 'equipments#index'
  #get 'equipments/:id', to: 'equipments#show', as: 'equipments'
  resources :equipments 
  #get 'equipments', to: 'equipments#index'
  #get "equipments/new", to: "equipments#new"
  #post "equipments", to: "equipments#create"
  #get 'equipments/:id', to: 'equipments#show', as: 'equipment'
   end