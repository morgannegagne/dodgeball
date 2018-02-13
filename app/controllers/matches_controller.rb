class MatchesController < ApplicationController

  def show
  end

  def new
    if params[:search]
      @users = User.search_users(params[:search]).select{|user| user != current_user}
    else
      @users = User.all.select{|user| user != current_user}
    end
  end

  def create
    byebug
    Match.create()
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def set_match
    @match = Match.find(params[:id])
  end

end
