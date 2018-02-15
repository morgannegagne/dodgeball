class PlayerTeamsController < ApplicationController
  before_action :set_team

  def new
    @player_team = PlayerTeam.new
  end

  def create
    PlayerTeam.create(team_id: @team.id, player_id: player_params[:player1_id])
    PlayerTeam.create(team_id: @team.id, player_id: player_params[:player2_id])
    PlayerTeam.create(team_id: @team.id, player_id: player_params[:player3_id])
    PlayerTeam.create(team_id: @team.id, player_id: player_params[:player4_id])
    PlayerTeam.create(team_id: @team.id, player_id: player_params[:player5_id])
    redirect_to @team
  end

  def edit
    @player = Player.find_by(id: params[:player_id])
    PlayerTeam.where(player_id: params[:player_id], team_id: params[:id]).destroy_all
  end

  def update
    PlayerTeam.create(team_id: @team.id, player_id: player_params[:id])
    redirect_to @team
  end

  def destroy
  end


  private

  def set_team
    @team = Team.find_by(id: params[:id])
  end

  def player_params
    if params[:player][:id]
      params.require(:player).permit(:id)
    else
      params.require(:player).permit(:player1_id, :player2_id, :player3_id, :player4_id, :player5_id)
    end
  end

end
