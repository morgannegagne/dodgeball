class MatchesController < ApplicationController

  def show
  end

  def new
  end

  def create
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
