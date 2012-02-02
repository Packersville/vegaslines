class YearsController < ApplicationController
  load_and_authorize_resource
  before_filter :get_current_year
  
  def index
    @years = Year.all
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
