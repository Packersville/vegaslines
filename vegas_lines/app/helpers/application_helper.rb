module ApplicationHelper
  def get_year_id(year)
    year = Year.where("year = #{year}").first
    year.id
  end
end
