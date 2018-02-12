class UsersController < ApplicationController
  before_action :set_user, only:[:show, :edit, :update, :destroy]
  def index
    @users = Users.all
  end

  def show
  end

  def new

  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to @user
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
    params.require(:user).permit(:name)
  end


end
