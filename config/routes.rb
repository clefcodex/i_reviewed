Rails.application.routes.draw do
  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

  root to: "books#index"

  resources :books do 
    resources :notes, only: [:create, :destroy]
  end

  resources :sessions, only: [:new, :create, :destroy]

  get "/login" => "sessions#new", as: "login"
  delete "/logout" => "sessions#destroy", as: "logout"

end
