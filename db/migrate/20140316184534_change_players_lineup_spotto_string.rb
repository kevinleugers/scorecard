class ChangePlayersLineupSpottoString < ActiveRecord::Migration
  def change
    remove_column :players, :lineup_spot
    add_column :players, :lineup_spot, :string
  end
end
