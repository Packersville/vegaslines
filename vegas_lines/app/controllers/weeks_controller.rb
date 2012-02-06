class WeeksController < ApplicationController
  load_and_authorize_resource
  
  def index
    @year = Year.find(params[:year_id])
    @weeks = @year.weeks
    @weeks_for_lines = @year.weeks.where("start_date <= '#{Date.today}'")
  end
  
  def edit
    @year = Year.find(params[:year_id])
    @week = Week.find(params[:id])
    @games = @week.games
    @teams = Team.find(:all, :order => "Name ASC")
    @official_lines = OfficalLine.find_by_week_id(@week)
  end
  
  def update
    @year = Year.find(params[:year_id])
    @teams = Team.find(:all, :order => "Name ASC")
    @week = Week.find(params[:id])
    @games = @week.games
    p params[:week]
    if @week.update_attributes(params[:week])
      redirect_to edit_year_week_path(@year.id, @week)
    else
      render 'edit'
    end
  end
end
