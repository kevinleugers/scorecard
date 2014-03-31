class Game < ActiveRecord::Base
  has_many :players
  has_many :at_bats

  validates :team, presence: true

  def lineup
    Lineup.new(self.players)
  end
end
