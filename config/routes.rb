Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :crushes
  resources :crush_libraries
  resources :libraries
  root "crushes#index"
  resources :users, only: [:show]

  get 'pages/about' 

end
