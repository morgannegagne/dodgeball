class PlayersController < ApplicationController
  before_action :set_player, only:[:show, :edit, :update, :destroy]
  
  def index
    @players = Player.all
  end

  def show
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.valid?
      @player.save
      redirect_to @player
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
  def set_player
    @player = Player.find_by(id: params[:id])
  end

  def player_params
    params.require(:player).permit(:name)
  end


end
