class PlayersController < ApplicationController
	def new
		@player = Player.new
	end

	def create
		@player = Player.new(player_params)
		@player.game_id = params[:game_id]
		if @player.save
			flash.alert = "Player Added"
			redirect_to game_path(params[:game_id])
		else
			flash[:error] = @player.errors.full_messages.to_sentence
			redirect_to new_game_player_path(params[:game_id])
		end
	end

	def destroy
		player = Player.find(params[:id])
		player.destroy
		flash.alert = "Player Deleted"
		redirect_to game_path(params[:game_id])
	end

	private

	def player_params
		params.require(:player).permit(:name, :position, :lineup_spot)
	end
end
