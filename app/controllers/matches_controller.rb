class MatchesController < ApplicationController

  LOSS_MESSAGES = ["If you can’t dodge a wrench, you can’t dodge a ball. Start dodging wrenches.", "Ouchtown, population: You, bro!", "You're about as useful as a poopy flavored lollipop.", "You better learn the five d's of dodgeball: dodge duck dip dive and dodge", "Did you blindfold yourself?", "Damn you, Bernice!"]

  WIN_MESSAGES = ["If you can dodge a wrench, you can dodge a ball. Nice Work.", "Nobody makes you bleed your own blood!", "It’s a bold strategy, Cotton. But it paid off for them!", "If you can dodge traffic, you can dodge a ball!", "Patches is proud!", "Effin' A, Cotton, Effin' A!", "'L' for love! Good times!"]

  def index
    @team = Team.find_by(id: params[:team_id])
    @matches = @team.matches
  end

  def show
    @match = Match.find_by(id: params[:id])
  end

  def new
    if params[:search]
      @users = User.search_users(params[:search]).select{|user| user != current_user}
    else
      @users = User.all.select{|user| user != current_user}
    end
  end

  def create
    @match = Match.create(home_team_id: current_user.team.id, away_team_id: params[:away_team_id])
    @match.assign_winner
    @match.update_standings
    @match.create_notification
    @match.winning_team_rank_up
    flash[:message] = @match.pick_match_message
    redirect_to @match
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def set_match
    @match = Match.find(params[:id])
  end

end
