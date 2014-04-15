require "spec_helper"

describe Substitution do
  context "#make_substitution" do
    it "subs the player in with the same position as the player being subbed out" do
			game = new_game_and_lineup
			sub_in = create(:player, name: "Chris Heisey", position: "LF", lineup_spot: "BENCH", game: game)
			sub_out = game.players.where(position: "RF").last
			substitution = Substitution.new(game, sub_out, sub_in)

			substitution.make_substitution
			expect(game.players.where(position: "RF").last.name).to eq(sub_in.name)
    end
  end
end
