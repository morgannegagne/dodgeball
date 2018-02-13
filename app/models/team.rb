class Team < ApplicationRecord
  has_many :home_matches, class_name: 'Match', foreign_key: :home_team_id
  has_many :away_matches, class_name: 'Match', foreign_key: :away_team_id
  has_many :player_teams
  has_many :players, through: :player_teams
  belongs_to :league
  belongs_to :user

  def matches
    Match.where('home_team_id = ? or away_team_id = ?', id, id)
  end

  def add_win
    self.wins += 1
    self.save
  end

  def add_loss
    self.losses += 1
    self.save
  end
end
