class TeamsController < ApplicationController

  before_action :set_user
  before_action :set_team, only:[:show, :edit, :update, :destroy]




  def show
  end

  def new
    @team = Team.new(user_id: params[:user_id])
  end

  def create
    byebug
    @team = Team.new(team_params)
    if @team.valid?
      @team.save
      redirect_to team_path(@team)
    else
      render :new
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
  def set_team
    @team = Team.find_by(id: params[:id])
  end

  def set_user
    @user = User.find_by(id: params[:user_id])
  end

  def team_params
    params.require(:team).permit(:name)
  end
# user_id, :league_id, :wins, :losses
end
