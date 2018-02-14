class League < ApplicationRecord
  has_many :teams

  def find_team_rank(team)
    teams = self.teams.order(wins: :desc)
    teams.find_index(team) + 1
  end
end
