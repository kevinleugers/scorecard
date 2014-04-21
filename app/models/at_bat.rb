class AtBat < ActiveRecord::Base
  BASES = 0..4
  INNINGS = 0..25
  RESULTS = ['Single', 'Double', 'Triple', 'Home Run', 'Strikeout', 'Fly Out', 'Ground Out', 'Walk', 'Hit By Pitch']
  belongs_to :game

  validates_presence_of :inning
  validates_presence_of :result
  validates_presence_of :base
  validates_inclusion_of :base, :in => BASES, :allow_nil => false
  validates_inclusion_of :inning, :in => INNINGS, :allow_nil => false
  validates_inclusion_of :result, :in => RESULTS, :allow_nil => false
end
