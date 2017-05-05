Rails.application.routes.draw do

  resources :users
  resources :attractions

  root "users#index"

  


end
