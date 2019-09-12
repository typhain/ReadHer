Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :crushes
  resources :crush_libraries
  resources :libraries
  root to: "crushes#index"
  #resources :edit_user_registration, only: [:new, :create, :update]
  #resources :users
  #get "/Edit", to: "registrations#edit", :as => 'Edit'
end
