Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'application#home'
  resources :teams, only: [:index, :show]

  get 'teams/:id/add_players', to: 'player_teams#new'
  post 'teams/:id', to: 'player_teams#create'

  resources :users do
    resource :team
  end

  resources :players, :matches

end
