class LinesController < ApplicationController
  before_filter :get_current_year
  
  def edit
    @lines = Line.find(params[:id])
    @week = Week.find(@lines.week_id)
    @games = @week.games
  end
  
  def update
    @lines = Line.find(params[:id])
    @week = Week.find(@lines.week_id)
    @games = @week.games
    if @lines.update_attributes(params[:line])
      redirect_to edit_week_line_path(@week, @lines)
    else
      render "edit"
    end
  end
end
