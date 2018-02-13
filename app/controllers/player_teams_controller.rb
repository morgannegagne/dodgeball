class PlayerTeamsController < ApplicationController
  before_action :set_team

  def new
    @player_team = PlayerTeam.new
  end

  def create
    byebug
    PlayerTeam.create(team_id: @team.id, player_id: player_params[:player1_id])
    PlayerTeam.create(team_id: @team.id, player_id: player_params[:player2_id])
    PlayerTeam.create(team_id: @team.id, player_id: player_params[:player3_id])
    PlayerTeam.create(team_id: @team.id, player_id: player_params[:player4_id])
    PlayerTeam.create(team_id: @team.id, player_id: player_params[:player5_id])
    redirect_to @team
  end

  def edit

  end

  def update

  end

  def destroy

  end


  private

  def set_team
    @team = Team.find_by(id: params[:id])
  end

  def player_params
    params.require(:player).permit(:player1_id, :player2_id, :player3_id, :player4_id, :player5_id)
  end

end
