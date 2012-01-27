class WeeksController < ApplicationController

  def index
    @year = Year.find(params[:year_id])
    @weeks = @year.weeks
  end
end
