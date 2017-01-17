class Team < ActiveRecord::Base
  has_many :players
  has_many :matches
  has_many :pitches, through: :matches
end
