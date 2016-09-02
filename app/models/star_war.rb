class StarWar < ActiveRecord::Base
  validates :character, :quote, presence: true
end
