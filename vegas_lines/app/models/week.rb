class Week < ActiveRecord::Base
  belongs_to :year
  has_many :games
  after_save :create_games
  
  protected
  def create_games
    16.times {self.games.build}
    games.each_with_index do |game, index|
      game.index = index+1
    end
    self.games.each(&:save!)
  end
end
