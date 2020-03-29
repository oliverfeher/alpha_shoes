Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/users/login" => "sessions#new"
  get "/users/logout" => "sessions#destroy"
  post "/sessions" => "sessions#create"
  post "/users/details" => "details#create"
  root 'home#index'


  resources :users, only: [:new, :create] do
    resource :details, only: [:new, :show,]
  end
  resources :shoes, only: [:index, :show]
end
