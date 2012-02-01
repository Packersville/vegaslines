class Line < ActiveRecord::Base
  belongs_to :week
  belongs_to :user
  
  validate :spread_valid
  
  def spread_valid
    reg = /\d{1,2}(\.5)?/
    (1..16).each do |g|
      game = (self.send("game#{g}")).to_s
      if (game.match(reg)? true : false) == false && game.empty? == false
	self.errors.add(:base, "Invalid line submitted.")
      end
    end
  end
end
