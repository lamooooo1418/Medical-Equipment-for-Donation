
Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users
  # get 'equipments', to: 'equipments#index'
# get 'equipments/:id', to: "equipments#show", as: 'equipment'
# get 'equipments/destroy'
 resources :equipments ,:hospitals 
 # get 'equipments/update'
 #get 'equipments/create'
 # get 'equipments/new' 
  post 'equipments/new', to: 'equipments#create'
 
  #get 'hospitals/create'
  #get 'hospitals/new' 
  #post 'hospitals/new', to: 'hospitals#create'
  
  #root 'equipments#index'
  root 'pages#home'
 #root 'hospitals#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  

 