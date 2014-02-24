class Lineup
	include ActiveModel::Model

	def initialize game
		@game = game
	end

	def players
		@game.players.order(:lineup_spot)
	end
end
