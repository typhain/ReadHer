Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :crushes
  resources :crush_libraries
  resources :libraries
  root "crushes#index"
  resources :users, only: [:show]

  resources :crushs do
    resources :comments
  end

  get 'pages/about'
  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end

end
