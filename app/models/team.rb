class Team < ApplicationRecord
  has_many :home_matches, class_name: 'Match', foreign_key: :home_team_id
  has_many :visitor_matches, class_name: 'Match', foreign_key: :visitor_team_id
  has_many :player_teams
  has_many :players, through: :player_teams
  belongs_to :league
  def matches
    Match.where('home_team_id = ? or visitor_team_id = ?', id, id)
  end
end
