Rails.application.routes.draw do

  devise_for :users
  
  get 'users/show'
  get 'pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :crushes
  resources :crush_libraries
  resources :libraries

  resources :pages, only: [:index]

  root :to => "pages#welcome_page"

  resources :users, only: [:show]

  resources :crushs do
    resources :comments
  end

  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end

end
