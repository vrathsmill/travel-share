Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "application#home"

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout' => 'sessions#destroy'
  get '/edit', to: "users#edit"
  patch '/users/:id', to: "users#update"
  resources :users
  resources :sessions, only: [:create]
  resources :cities, only: [:show, :index]
  resources :trips

  #resources :sessions
end
