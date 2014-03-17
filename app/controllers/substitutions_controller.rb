class SubstitutionsController < ApplicationController
	def new
		@substitution = Substitution.new(Game.find(params[:game_id]))
	end

	def create
		game = Game.find(params[:game_id])
		substitution = Substitution.new(game, params[:substitution][:sub_out], params[:substitution][:sub_in])
		substitution.make_substitution
		flash[:success] = "Substitution Made"
		redirect_to game_path(game.id)
	end

	private

	def substitution_params
		params.require(:substitution).permit(:sub_in, :sub_out)
	end
end
