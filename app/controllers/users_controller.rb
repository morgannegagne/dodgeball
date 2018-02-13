class UsersController < ApplicationController
  before_action :set_user, only:[:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to new_user_team_path(@user)
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
  def set_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end


end
