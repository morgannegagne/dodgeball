class TeamsController < ApplicationController

  before_action :set_user
  before_action :set_team, only:[:show, :edit, :update, :destroy]

  def index

    if params[:search]
      @teams = Team.order(:name).search_teams(params[:search])
    else
      @teams = Team.order(:name)
    end

  end

  def show
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    @team.user = @user
    if @team.valid?
      @team.save
      redirect_to add_team_players_path(@team)
    else
      render :new
    end
  end

  def update
    user = User.find_by(id: params[:user_id])
    @team = user.team
    if @team.update(team_params)
      @team.save
      redirect_to user_team_path(@team.user, @team)
    else
      render :edit
    end
  end

  def edit
  end

  def destroy
  end

  private
  def set_team
    @team = Team.find_by(user_id: params[:user_id]) || Team.find_by(id: params[:id])
  end

  def set_user
    @user = User.find_by(id: params[:user_id])
  end

  def team_params
    params.require(:team).permit(:name, :league_id)
  end

end
