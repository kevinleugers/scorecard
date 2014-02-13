require 'spec_helper'

feature "creating a new game to score" do
	scenario "new game displays the team name" do
		visit root_path
		click_button "New Game"
		fill_in 'Team', with: "Cincinnati Reds"
		click_button "Save"

		expect(page).to have_css('.team')
	end
end
