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
		sub_out_player = get_player sub_out
		sub_in_player = get_player sub_in
		sub_in_player.lineup_spot = sub_out_player.lineup_spot
		sub_in_player.position = sub_out_player.position
		sub_out_player.lineup_spot = "BENCH"
		sub_out_player.save
		sub_in_player.save
	end

	private

	def get_player player
		@game.players.find(player)
	end

end
