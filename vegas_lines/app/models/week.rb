class Week < ActiveRecord::Base
  belongs_to :year
  has_many :games
  has_many :lines
  after_create :create_games
  accepts_nested_attributes_for :games, :allow_destroy => true 
  
  validate :saved_games_unique
  validate :saved_games_date_valid
  
  protected
  def create_games
    if self.id != 1 # testing purposes
      16.times {self.games.build}
      games.each_with_index do |game, index|
	game.index = index+1
      end
      self.games.each(&:save!)
    end
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
 
  def saved_games_date_valid
    valid = true
    self.games.each do |game|
      if game.date.nil? == false
	if (game.date <= self.start_date || game.date > self.start_date+6) && valid == true
	  self.errors.add(:base, "Game's date is invalid.")
	  valid = false
	end
      end
    end
  end
end
