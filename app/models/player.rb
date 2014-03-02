class Player < ActiveRecord::Base
	belongs_to :game

	def at_bats
		AtBat.where(player_id: self.id)
	end	
end
