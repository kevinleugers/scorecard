class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :team

      t.timestamps
    end
  end
end
