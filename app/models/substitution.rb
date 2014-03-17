class Substitution
	attr_reader :game, :sub_out, :sub_in
	def initialize game, sub_out=Player.new, sub_in=Player.new
		@game = game
		@sub_out ||= sub_out
		@sub_in ||= sub_in
	end

	def batting_order
		@game.lineup.batting_order
	end

	def make_substitution
		out = get_player sub_out
		sub = get_player sub_in
		sub.lineup_spot = out.lineup_spot
		out.lineup_spot = "BENCH"
		out.save
		sub.save
	end

	private

	def get_player player
		@game.players.find(player)
	end

end
