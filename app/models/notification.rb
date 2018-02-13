class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :match

  def create_message
    if self.user.team == self.match.winning_team
      "You beat #{self.match.home_team.name}!"
    else
      "You lost to #{self.match.home_team.name} :("
    end
  end

  def display_date
    self.created_at.strftime('%A, %B %-d, %Y')
  end

  def self.unread
    self.where(unread: true)
  end
end
