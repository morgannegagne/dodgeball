class MatchesController < ApplicationController

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
