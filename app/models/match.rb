class Match < ApplicationRecord
  belongs_to :home_team, class_name: 'Team'
  belongs_to :away_team, class_name: 'Team'
  has_many :notifications

  LOSS_MESSAGES = ["If you can’t dodge a wrench, you can’t dodge a ball. Start dodging wrenches.", "Ouchtown, population: You, bro!", "You're about as useful as a poopy flavored lollipop.", "You better learn the five d's of dodgeball: dodge duck dip dive and dodge", "Did you blindfold yourself?", "Damn you, Bernice!"]

  WIN_MESSAGES = ["If you can dodge a wrench, you can dodge a ball. Nice Work.", "Nobody makes you bleed your own blood!", "It’s a bold strategy, Cotton. But it paid off for them!", "If you can dodge traffic, you can dodge a ball!", "Patches is proud!", "Effin' A, Cotton, Effin' A!", "'L' for love! Good times!"]

  def assign_winner
    team_levels = [home_team.user.level, away_team.user.level]
    total_weight = team_levels.sum
    random_number = rand(1..total_weight)
    if random_number - team_levels[0] <= 0
      self.winning_team_id = home_team.id
    else
      self.winning_team_id = away_team.id
    end
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

  def winning_team_rank_up
    wins = self.winning_team.wins
    case wins
    when 5
      winning_team.user.update(ranking_id: 2)
      "Congratulations, you are now an Underdog!"
    when 10
      winning_team.user.update(ranking_id: 3)
      "Congratulations, you are now an Average Joe!"
    when 50
      winning_team.user.update(ranking_id: 4)
      "Congratulations, you are now a Wrench Dodger!"
    when 100
      winning_team.user.update(ranking_id: 5)
      "Congratulations, you are now a DODGEBALL LEGEND!!!"
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

  def create_notification
    Notification.create(match_id: self.id, user_id: self.away_team.user_id)
  end

  def pick_match_message
    if self.home_team_id == self.winning_team_id
      WIN_MESSAGES.sample
    else
      LOSS_MESSAGES.sample
    end
  end

  def summary
    if self.home_team_id == self.winning_team_id
      "#{self.home_team.name} def. #{self.away_team.name}"
    else
      "#{self.away_team.name} def. #{self.home_team.name}"
    end
  end

  def display_date
    self.created_at.strftime('%A, %B %-d, %Y')
  end


end
