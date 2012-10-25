class GameType < ActiveRecord::Base
  has_many :games
  attr_accessible :description
end
