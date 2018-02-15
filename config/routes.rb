Rails.application.routes.draw do

  root to: 'application#home'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :teams, only: [:show] do
    get '/matches', to: 'matches#index', as: 'matches'
  end

  resources :teams, only: [:index]
  resources :players
  resources :matches, only: [:index, :show, :new, :create]
  resources :leagues, only: [:index, :show]
  resources :notifications, only: [:index, :update]

  get '/teams/:id/add_players', to: 'player_teams#new', as: 'add_team_players'
  post '/teams/:id', to: 'player_teams#create'
  get '/teams/:id/edit_players', to: 'player_teams#edit', as: 'edit_team_players'
  patch '/teams/:id', to: 'player_teams#update'

  resources :users do
    resource :team
  end

end
