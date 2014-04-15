class Lineup
  include ActiveModel::Model

  def initialize players
    @players = players
  end

  def batting_order
    @players.order(:lineup_spot).select {|x| x.in_game?}
  end

  def players_on_bench
    @players.where(lineup_spot: 'BENCH')
  end

	def catcher
		@players.where(position: "C").last
	end

	def first_base
		@players.where(position: "1B").last
	end

	def get_player(position)
		@players.where(position: position).last
	end
end
