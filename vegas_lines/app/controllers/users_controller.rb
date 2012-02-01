class UsersController < ApplicationController
  before_filter :get_current_year
  
  def show
    year_count = Year.all.count
    if year_count == 0
      redirect_to years_path
    else
      @user = User.find(current_user.id)
      year = Year.where("year = #{@get_current_year}").first	
      weeks = year.weeks
      find_user_lines(weeks)
    end
  end
  
  protected
  def find_user_lines(weeks)
    lines = Line.where("user_id = #{current_user.id}") 
    if lines == []
      weeks.each do |week|
	line = Line.new
	line.user_id = current_user.id
	line.week_id = week.id
	line.save
	#p line.errors.full_messages
      end
    end
  end
end
