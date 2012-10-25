class Game < ActiveRecord::Base
  has_many :classifications
  belongs_to :base
  belongs_to :game_type

  attr_accessible :duration, :name
end
