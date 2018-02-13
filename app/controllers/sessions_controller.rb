class SessionsController < ApplicationController

  def new

  end

  def create
# binding.pry
byebug
    @user = User.find_by(username: params[:username])

    if @user
      session[:user_id] = @user.id
      redirect_to @team
      # binding.pry
    else
      flash[:message] = "User could not be found"
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end



end
