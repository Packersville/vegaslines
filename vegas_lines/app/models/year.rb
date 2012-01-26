class Year < ActiveRecord::Base
  has_many :weeks
  after_create :create_years_weeks
  
  protected
  def create_years_weeks
    16.times {self.weeks.build}
    self.weeks.each_with_index do |week, index|
      week.week = index+1
    end
    self.weeks.each(&:save!)
  end
end
