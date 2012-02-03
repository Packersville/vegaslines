class OfficalLinesController < ApplicationController
  load_and_authorize_resource
  
  def edit
    @offical_lines = OfficalLine.find(params[:id])
    @week = Week.find(@lines.week_id)
    @games = @week.games
  end
  
  def update
    @offical_lines = OfficalLine.find(params[:id])
    @week = Week.find(@lines.week_id)
    @games = @week.games
    if @offical_lines.update_attributes(params[:offical_lines])
      redirect_to @offical_lines_path(@week, @offical_lines)
    else
      render "edit"
    end
  end
end
