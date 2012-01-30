class LinesController < ApplicationController
  before_filter :get_current_year
  
  def edit
    @lines = Line.find(params[:id])
    @week = Week.find(@lines.week_id)
    @games = @week.games
  end
end
