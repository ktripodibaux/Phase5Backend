Rails.application.routes.draw do
  resources :comments
  resources :posts
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

  get '/user_feed/:id', to: 'posts#user_feed'

  get '/user_posts/:id', to: 'posts#posts'

  get '/user_friends_list/:id', to: 'users#getFriends'

  

  post "/login", to: "sessions#create"
  delete '/logout', to: 'sessions#destroy'

end
