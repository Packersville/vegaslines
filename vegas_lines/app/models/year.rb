class Year < ActiveRecord::Base
  has_many :weeks
  after_create :create_weeks
  
  validates_uniqueness_of :year
  protected
  def create_weeks
    17.times {self.weeks.build}
    self.weeks.each_with_index do |week, index|
      week.week = index+1
    end
    self.weeks.each(&:save!)
  end
end
