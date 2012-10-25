class Classification < ActiveRecord::Base
  has_many :games
  attr_accessible :descrption
end
