module CreateGameHelpers
	def new_game_and_lineup
	  game = create(:game)
		create(:player, game: game, name: "Billy Hamilton", position: "CF", lineup_spot: 1)
		create(:player, game: game, name: "Brandon Phillips", position: "2B", lineup_spot: 2)
		create(:player, game: game, name: "Joey Votto", position: "1B", lineup_spot: 3)
		create(:player, game: game, name: "Jay Bruce", position: "RF", lineup_spot: 4)
		create(:player, game: game, name: "Ryan Ludwick", position: "LF", lineup_spot: 5)
		create(:player, game: game, name: "Todd Frazier", position: "3B", lineup_spot: 6)
		create(:player, game: game, name: "Devin Mesoroco", position: "C", lineup_spot: 7)
		create(:player, game: game, name: "Zack Cozart", position: "SS", lineup_spot: 8)
		create(:player, game: game, name: "Homer Bailey", position: "P", lineup_spot: 9)
		game
	end

	def new_game team="Cincinnati Reds"
		visit root_path
		click_button 'New Game'
		fill_in 'Team', with: team
    click_button 'Save'
	end
end

RSpec.configure do |config|
	config.include CreateGameHelpers
end
