class WeeksController < ApplicationController

  def index
    @year = Year.find(params[:year_id])
    @weeks = @year.weeks
    @weeks_for_lines = @year.weeks.where("start_date <= '#{(Date.today+50)}'")
  end
  
  def edit
    @year = Year.find(params[:year_id])
    @week = Week.find(params[:id])
    @games = @week.games
    @teams = Team.find(:all, :order => "Name ASC")
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
