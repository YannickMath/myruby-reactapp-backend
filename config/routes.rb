Rails.application.routes.draw do
  devise_for :users

  # Routes pour les utilisateurs
  resources :users, only: [:create, :destroy, :index, :show] do
    member do
      get :messages
    end
  end
  
  # Routes pour les messages
  resources :messages, only: [:create, :destroy, :index, :show]
  
  # Autre route pour obtenir l'utilisateur d'un message spécifique
  get '/messages/:id/user', to: 'messages#user', as: 'message_user'

  # Les autres routes que tu avais fournies semblent être des duplications, je les ai donc supprimées.

  # ...
end





# Rails.application.routes.draw do
#   devise_for :users
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# post '/users', to: 'users#create'
# get '/users', to: 'users#index'
# get '/users/:id', to: 'users#show'
# get '/users/:id/messages', to: 'users#messages'
# post '/messages', to: 'messages#create'
# get '/messages', to: 'messages#index'
# get '/messages/:id', to: 'messages#show'
# get '/messages', to: 'messages#index'

# get '/messages/:id/user', to: 'messages#user'


# end
