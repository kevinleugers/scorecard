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
		fill_in 'Name', with: "Joey Votto"
		fill_in 'Position', with: '1B'
		fill_in 'Lineup spot', with: '3'
		click_button "Save"

		within '#lineup_3' do
			expect(page).to have_content('Joey Votto')
		end
	end
end

def new_game team="Cincinnati Reds"
	visit root_path
	click_button "New Game"
	fill_in 'Team', with: team
	click_button "Save"
end
