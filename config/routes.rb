Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

post '/users', to: 'users#create'
get '/users', to: 'users#index'
get '/users/:id', to: 'users#show'
get '/users/:id/messages', to: 'users#messages'
post '/messages', to: 'messages#create'
get '/messages', to: 'messages#index'
get '/messages/:id', to: 'messages#show'
get '/messages/:id/user', to: 'messages#user'


end
