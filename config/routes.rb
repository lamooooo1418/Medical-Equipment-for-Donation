
Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users
  resources :equipments ,:hospitals 
  post 'equipments/new', to: 'equipments#create'
  post 'hospitals/new', to: 'hospitals#create'
  root 'pages#home'
  get "bootstrap", to: "equipment#bootstrap"
end
  

 