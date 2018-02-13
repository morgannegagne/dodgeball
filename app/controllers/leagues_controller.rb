class LeaguesController < ApplicationController

  def index
    @leagues = League.all
  end

  def show
    @league = League.find_by(id: params[:id])
  end

end
