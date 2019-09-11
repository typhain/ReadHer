Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :crushes
<<<<<<< HEAD
  root to: 'crushes#index' 
=======
  resources :crush_libraries
  resources :libraries
  root to: 'crushes#index'
>>>>>>> 61a2e45c4ca102ca31e755a277f532d1d6bcf7f8
end
