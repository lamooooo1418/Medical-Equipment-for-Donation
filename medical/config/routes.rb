
Rails.application.routes.draw do
  devise_for :users
  # get 'equipments', to: 'equipments#index'
  # get 'equipments/:id', to: "equipments#show", as: 'equipment'
  # get 'equipments/destroy'
  resources :equipments 
  # get 'equipments/update'
  get 'equipments/create'
  get 'equipments/new' 
  post 'equipments/new', to: 'equipments#create'
 
  root 'equipments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  

 