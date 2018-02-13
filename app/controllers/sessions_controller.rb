class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:user][:name])
    user = user.try(:authenticate, params[:user][:password])

    return redirect_to(controller:'sessions', action: 'new') unless user
    session[:user_id] = user.id
    @user = user

    redirect_to user_team_path(@user)
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
