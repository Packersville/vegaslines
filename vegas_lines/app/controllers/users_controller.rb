class UsersController < ApplicationController
  before_filter :get_current_year
  
  def show
    @user = User.find(current_user.id)
#     year = Year.find(@get_current_year)
#     weeks = Week.where("user_id = #{current_user.id}")
#     find_user_lines(weeks)
  end
end
