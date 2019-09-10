Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :crushes
  root to: 'crushes#index'
  resources :users, only: [:show]
  get "edit_user_registration" => "devise/registrations#edit"
end
