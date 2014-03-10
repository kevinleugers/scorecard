class Lineup
	include ActiveModel::Model

	def initialize players
		@players = players
	end

	def batting_order
		@players.order(:lineup_spot)
	end
end
