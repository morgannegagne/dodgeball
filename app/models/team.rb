class Team < ApplicationRecord
  has_many :home_matches, class_name: 'Match', foreign_key: :home_team_id
  has_many :away_matches, class_name: 'Match', foreign_key: :away_team_id
  has_many :player_teams
  has_many :players, through: :player_teams
  belongs_to :league
  belongs_to :user
  validates :name, presence: true

  def user_id
    self.user.id
  end

  def matches
    Match.where('home_team_id = ? or away_team_id = ?', id, id).order(created_at: :desc)
  end

  def add_win
    self.wins += 1
    self.save
  end

  def add_loss
    self.losses += 1
    self.save
  end

  def self.search_teams(search_term)
    self.all.select{|team| team.name.downcase.include?(search_term.downcase)}
  end

  def winning_percentage
    (wins.to_f / matches.count.to_f).round(3)
  end

end
