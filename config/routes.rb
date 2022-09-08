Rails.application.routes.draw do
  resources :requests
  # get 'sessions/create'
  # get 'sessions/destroy'
  resources :friendships
  resources :messages
  resources :chats
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/users_chats/:id', to: 'users#chats'
  get '/users_friends/:id', to: 'users#friends'
  get '/users_requests/:id', to: 'users#requests'

  

  post "/login", to: "sessions#create"
  delete '/logout', to: 'sessions#destroy'

end
