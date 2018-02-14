class User < ApplicationRecord
  has_one :team
  has_many :player_teams, through: :team
  has_many :players, through: :player_teams
  has_many :notifications
  belongs_to :ranking
  validates :name, presence: true
  validates :name, uniqueness: true
  has_secure_password


  def self.search_users(search_term)
    self.all.select{|user| user.name.downcase.include?(search_term.downcase)}
  end

  def level
    self.ranking.level
  end

  def league_id
    self.team.league.id
  end

end
