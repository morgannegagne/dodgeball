class LeaguesController < ApplicationController


  def index
    @leagues = League.all
  end


  def show
    @league = League.find_by(id: current_user.league_id)
  end

end
