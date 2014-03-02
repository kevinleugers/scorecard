class AtBatsController < ApplicationController
	def new
		@at_bat = AtBat.new
		@at_bat.player_id = params[:format]
	end

	def create
		@at_bat = AtBat.new(at_bat_params)
		@at_bat.game_id = params[:game_id]
		@at_bat.player_id = params[:player_id]
		@at_bat.save
		redirect_to game_path(params[:game_id])
	end

	private

	def at_bat_params
		params.require(:at_bat).permit(:result, :base, :note, :inning, :player_id)
	end
end
