class GamesController < ApplicationController
	def new
		@game = Game.new
	end

	def create
		game = Game.new(game_params)
		if game.save
			redirect_to game_path(game)
		else
			flash.alert = "Unable to create game"
			redirect_to root_path
		end
	end

	def show
		@game = Game.find(params[:id])
	end

	def substitution
		@game = Game.find(params[:game_id])
		@out = Player.new
		@in = Player.new
	end

	private

	def game_params
		params.require(:game).permit(:team)
	end
end
