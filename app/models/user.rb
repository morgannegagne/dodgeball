class User < ApplicationRecord
  has_one :team
  has_many :player_teams, through: :team
  has_many :players, through: :player_teams
  has_secure_password

end
