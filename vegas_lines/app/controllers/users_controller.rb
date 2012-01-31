class UsersController < ApplicationController
  before_filter :get_current_year
  
  def show
    year_count = Year.all.count
    if year_count == 0
      redirect_to years_path
    end
    @user = User.find(current_user.id)
    find_user_lines(weeks)
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
      end
    end
  end
end
