class OfficialLine < ActiveRecord::Base
  belongs_to :week
  
  validate :spread_valid
  validate :numericality_of_games
  
  def spread_valid
    reg = /\A-?\d{0,2}(\.5)?\Z/
    (1..16).each do |g|
      game = (self.send("game#{g}")).to_s
      if (game.match(reg)? true : false) == false && game.empty? == false
	errors.add("game#{g}".to_sym, "has invalid spread.")
      end
    end
  end
  
  def numericality_of_games
    (1..16).each do |line|
      p self.send("game#{line}")
      if self.send("game#{line}").nil? == false && self.send("game#{line}").empty? == false
	validates_numericality_of "game#{line}".to_sym
      end
    end
  end
end
