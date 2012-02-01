class YearsController < ApplicationController
  before_filter :get_current_year
  
  def index
    @years = Year.all
    week_ids = @year.weeks.collect {|x| x.id}
    week_ids = week_ids.map {|i| "'" + i.to_s + "'"}.join(",")
    lines = Line.where("user_id = #{current_user.id} AND week_id IN (#{week_ids})").count
    if lines == 0
      redirect_to user_path(current_user.id)
    end
  end
  
  def create
    @year = Year.new(params[:year])
    @year.save
    redirect_to years_path
  end
  
  def new
    @year = Year.new
  end
end
