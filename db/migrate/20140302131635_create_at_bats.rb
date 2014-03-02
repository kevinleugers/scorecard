class CreateAtBats < ActiveRecord::Migration
  def change
    create_table :at_bats do |t|
			t.string :result
			t.integer :base
			t.string :note
			t.integer :inning
			t.integer :player_id
			t.belongs_to :game

      t.timestamps
    end
		add_index :at_bats, :player_id
  end
end
