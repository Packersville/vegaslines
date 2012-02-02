class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  
  def after_sign_in_path_for(resource)
    year = Year.find_by_year(Date.today.year)
    if year.nil? == true && current_user.admin == true
      flash[:alert] = "Create a year"
      return years_path
    elsif year.nil? == false
      week_ids = year.weeks.collect { |x| x.id }
      week_ids = week_ids.map { |i| "'" + i.to_s + "'" }.join(",")
      lines = Line.where("user_id = #{current_user.id} AND week_id IN (#{week_ids})").count
      if lines == 0
	find_user_lines(year.weeks)
      end
      return user_path(current_user.id)
    end
  end
  
  protected
  def get_current_year
    @get_current_year = Date.today.year
  end
  
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
