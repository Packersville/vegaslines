class Year < ActiveRecord::Base
  has_many :weeks
  after_create :create_weeks
  
  validates_uniqueness_of :year
  protected
  def create_weeks
    year = Year.last
    next_date = (year.start_date+2).to_s
    17.times {self.weeks.build}
    self.weeks.each_with_index do |week, index|
      if index == 0
	week.start_date = year.start_date
      else
	next_date = Date.strptime(next_date, "%Y-%m-%d")
	week.start_date = next_date
	next_date = (next_date+7).to_s
      end
      week.week = index+1
    end
    self.weeks.each(&:save!)
  end
end
