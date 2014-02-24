class PlayersController < ApplicationController
	def new
		@player = Player.new
	end

	def create
		@player = Player.new(player_params)
		@player.game_id = params[:game_id]
		@player.save
		redirect_to game_path(params[:game_id])
	end

	private

	def player_params
		params.require(:player).permit(:name, :position, :lineup_spot)
	end
end
