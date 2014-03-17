require 'spec_helper'

feature "making a player substitution in a game" do
	scenario "takes a player from the bench and puts them in the game" do
		game = new_game_and_lineup
		sub = create(:player, name: "Chris Heisey", position: 'LF', lineup_spot: 'BENCH', game: game)

		visit game_path(game.id)
		click_button 'Make Substitution'
		within('.batting_order') do
			choose(game.players.first.name)
		end
		within('.bench') do
			choose(sub.name)
		end
		click_button 'Save Substitution'

		within('.batting_order') do 
			expect(page).to have_content(sub.name)
		end
	end
end
