class YearsController < ApplicationController
  before_filter :get_current_year
  
  def index
    @years = Year.where("year = #{@get_current_year}").first
  end
end
