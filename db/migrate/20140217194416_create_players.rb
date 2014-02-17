class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.string :lineup_spot
			t.belongs_to :game

      t.timestamps
    end
		add_index :players, :game_id
  end
end
