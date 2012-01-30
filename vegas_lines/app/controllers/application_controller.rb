class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def after_sign_in_path_for(resource)
    user_path(current_user.id)
  end
  
  protected
  def get_current_year
    @get_current_year = Date.today.year
  end
end
