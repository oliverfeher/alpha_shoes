Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/login" => "sessions#new"
  get "/logout" => "sessions#destroy"
  post "/sessions" => "sessions#create"
  root 'home#index'


  resources :users, only: [:new, :create]
  resources :products, only: [:index, :show]
end
