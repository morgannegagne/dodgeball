class TeamsController < ApplicationController

  before_action :set_user
  before_action :set_team, only:[:show, :edit, :update, :destroy]


  def show
    byebug
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    @team.user = @user
    if @team.valid?
      @team.save
      redirect_to user_team_path
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
    @team = Team.find_by(user_id: params[:user_id]) || Team.find_by(id: params[:id])
  end

  def set_user
    @user = User.find_by(id: params[:user_id])
  end

  def team_params
    params.require(:team).permit(:name, :league_id)
  end

end
