class OfficialLinesController < ApplicationController
  load_and_authorize_resource
  
  def edit
    @official_lines = OfficialLine.find(params[:id])
    @week = Week.find(@official_lines.week_id)
    @games = @week.games
  end
  
  def update
    @official_lines = OfficialLine.find(params[:id])
    @week = Week.find(@official_lines.week_id)
    @games = @week.games
    if @official_lines.update_attributes(params[:official_lines])
      redirect_to edit_week_official_line_path(@week.id, @official_lines.id)
    else
      render "edit"
    end
  end
end
