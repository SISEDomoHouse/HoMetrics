Rails.application.routes.draw do

  resources :nodes
  resources :rooms
  
  resources :houses do
    resources :house_steps 
  end
  devise_for :users
  namespace :charts do
  	get 'house'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "houses#index"
end
