class Match < ApplicationRecord
  belongs_to :home_team, class_name: 'Team'
  belongs_to :away_team, class_name: 'Team'

  def assign_winner
    teams = [home_team_id, away_team_id]
    self.winning_team_id = teams.sample
    self.save
  end

  def update_standings
    if self.home_team_id == self.winning_team_id
      Team.find_by(id: home_team_id).add_win
      Team.find_by(id: away_team_id).add_loss
    else
      Team.find_by(id: home_team_id).add_loss
      Team.find_by(id: away_team_id).add_win
    end
  end

  def home_team
     Team.find_by(id: self.home_team_id)
  end

  def away_team
    Team.find_by(id: self.away_team_id)
  end

  def winning_team
    Team.find_by(id: self.winning_team_id)
  end


end
