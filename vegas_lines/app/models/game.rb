class Game < ActiveRecord::Base
  belongs_to :week
  belongs_to :team
end
