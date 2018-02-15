class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by(name: params[:user][:name])
    @user = user.try(:authenticate, params[:user][:password])
    if @user
      session[:user_id] = @user.id
      redirect_to user_team_path(@user)
    else
      flash[:message] = "Username and password don't match"
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

  private

  def user_params
    params.require(:user).require(:name, :password)
  end

end
