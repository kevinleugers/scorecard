require 'spec_helper'

describe Lineup, '#batting_order' do
	it 'returns a list of players in the correct batting order' do
		game = create(:game)
		player1 = create(:player, name: "Brandon Phillips", lineup_spot: 2)
		player2 = create(:player, name: "Billy Hamilton", lineup_spot: 1)
		game.players << player1
		game.players << player2

		expect(game.lineup.batting_order.first).to eq player2
	end
end
