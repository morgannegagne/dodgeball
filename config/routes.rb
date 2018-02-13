Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'application#home'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :teams, only: [:index, :show]

  get '/teams/:id/add_players', to: 'player_teams#new', as: 'add_team_players'
  post '/teams/:id', to: 'player_teams#create'
  get '/teams/:id/edit_players', to: 'player_teams#edit'
  patch '/teams/:id', to: 'player_teams#update'

  resources :users do
    resource :team
  end

  resources :players
  resources :matches, only: [:index, :show, :new, :create]
  resources :leagues, only: [:index, :show]

end
