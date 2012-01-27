class GamesController < ApplicationController
  
  def index
    @week = Week.find(params[:week_id])
    @games = @week.games
  end
end
