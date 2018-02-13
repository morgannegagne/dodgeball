class User < ApplicationRecord
  has_one :team
  has_many :player_teams, through: :team
  has_many :players, through: :player_teams
  has_secure_password


  def self.search_users(search_term)
    self.all.select{|user| user.name.downcase.include?(search_term.downcase)}
  end
  
end
