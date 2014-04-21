class Player < ActiveRecord::Base

  POSITIONS = ['C', 'P', '1B', '2B', '3B', 'SS', 'LF', 'CF', 'RF']
  LINEUP_CHOICES = ['1', '2', '3', '4', '5', '6', '7', '8', '9', 'BENCH']
  belongs_to :game

  validates :name, presence: true
  validates_inclusion_of :position, :in => POSITIONS, :allow_nil => false
  validates_inclusion_of :lineup_spot, :in => LINEUP_CHOICES, :allow_nil => false

  def at_bats
    AtBat.where(player_id: self.id)
  end  

  def in_game?
    self.lineup_spot != 'BENCH'
  end

  def benched?
    self.lineup_spot.eql?('BENCH')
  end
end
