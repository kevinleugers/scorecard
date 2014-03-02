class Game < ActiveRecord::Base
	has_many :players
	has_many :at_bats

	def lineup
		Lineup.new(self)
	end
end
