class Game < ActiveRecord::Base
	has_many :players

	def lineup
		Lineup.new(self)
	end
end
