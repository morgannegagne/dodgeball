Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :teams, only: [:index, :show]
  get 'teams/:id/add_players', to: 'player_teams#new'
  post 'teams/:id', to: 'player_teams#create'
  resources :users do
    resource :team
  end

end


# Prefix Verb   URI Pattern                              Controller#Action
# user_teams GET    /users/:user_id/teams(.:format)          teams#index
#        POST   /users/:user_id/teams(.:format)          teams#create
# new_user_team GET    /users/:user_id/teams/new(.:format)      teams#new
# edit_user_team GET    /users/:user_id/teams/:id/edit(.:format) teams#edit
# user_team GET    /users/:user_id/teams/:id(.:format)      teams#show
#        PATCH  /users/:user_id/teams/:id(.:format)      teams#update
#        PUT    /users/:user_id/teams/:id(.:format)      teams#update
#        DELETE /users/:user_id/teams/:id(.:format)      teams#destroy
#  users GET    /users(.:format)                         users#index
#        POST   /users(.:format)                         users#create
# new_user GET    /users/new(.:format)                     users#new
# edit_user GET    /users/:id/edit(.:format)                users#edit
#   user GET    /users/:id(.:format)                     users#show
#        PATCH  /users/:id(.:format)                     users#update
#        PUT    /users/:id(.:format)                     users#update
#        DELETE /users/:id(.:format)                     users#destroy
