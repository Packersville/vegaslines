class Week < ActiveRecord::Base
  belongs_to :year
  has_many :games
  has_many :lines
  after_create :create_games
  accepts_nested_attributes_for :games, :allow_destroy => true 
  
  validate :saved_games_unique
  
  protected
  def create_games
    16.times {self.games.build}
    games.each_with_index do |game, index|
      game.index = index+1
    end
    self.games.each(&:save!)
  end
  
 def saved_games_unique
  teams = []
  valid = true
  self.games.each do |game|
    if game.away_team_id != nil || game.home_team_id != nil
      if teams.include?(game.away_team_id)
	valid = false
	game.errors.add(:away_team_id, 'is already used')
      else
	teams << game.away_team_id
      end
      if teams.include?(game.home_team_id)
	valid = false
	game.errors.add(:home_team_id, 'is already used')
      else
	teams << game.home_team_id 
      end
    end
  end
  if valid == false
    self.errors.add(:base, "Duplicate team saved.")
  end
 end
end
