Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/login" => "sessions#new", as: :login
  post "/sessions" => "sessions#create"


  resources :users, only: [:new, :create]
end
