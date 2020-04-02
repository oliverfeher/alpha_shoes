Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/users/login" => "sessions#new"
  get "/users/logout" => "sessions#destroy"
  post "/sessions" => "sessions#create"
  post "/users/details" => "details#create"
  get '/auth/facebook/callback' => 'sessions#create'
  root 'home#index'


  resources :users, only: [:new, :create, :edit, :update] do
    resource :cart, only: [:show, :create, :destroy]
    resource :details, only: [:new, :show,]
  end

  resources :shoes, only: [:index, :show] do
    resource :reviews, only: [:create, :new, :show]
  end

end
