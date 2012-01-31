module WeeksHelper
  def get_week_lines_id(week, user)
    line = Line.where("week_id = #{week.id} AND user_id = #{user.id}").first
    line.id
  end
end
