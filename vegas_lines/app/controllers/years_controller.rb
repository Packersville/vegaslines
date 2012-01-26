class YearsController < ApplicationController
  before_filter :get_current_year
  
  def index
    @years = Year.all
  end
  
  def create
    @year = Year.new(params[:year])
    @year.save
  end
  
  def new
    @year = Year.new
  end
end
