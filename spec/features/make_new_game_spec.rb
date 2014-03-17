require 'spec_helper'

feature "creating a new game to score" do
	scenario "visiting the homepage" do
		visit root_path

		expect(page).to have_content("Welcome to the Scorecard app")
	end

	scenario "new game displays the team name" do
		new_game

		expect(page).to have_css('.team')
	end

	scenario "includes creating the lineup" do
		new_game

		click_button "Add Player"
		fill_in 'Name', with: "Kevin Leugers"
		fill_in 'Position', with: '1B'
		fill_in 'Lineup spot', with: '3'
		click_button "Save"

		within '.lineup' do
			expect(page).to have_content('Kevin Leugers')
		end
	end

	scenario "allows for deleting a player from the lineup" do
		game = new_game_and_lineup
		player = game.players.first

		visit game_path(game.id)
		within "#player_#{player.id}" do
			click_button 'Delete Player'
		end
		within ".lineup" do
			expect(page).to_not have_content(player.name)
		end
	end
end
