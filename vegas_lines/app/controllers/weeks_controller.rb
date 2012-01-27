class WeeksController < ApplicationController

  def index
    @year = Year.find(params[:year_id])
    @weeks = @year.weeks
  end
  
  def edit
    @year = Year.find(params[:year_id])
    @week = Week.find(params[:id])
    @games = @week.games
    @teams = Team.find(:all, :order => "Name ASC")
  end
end
