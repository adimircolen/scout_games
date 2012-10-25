class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.integer :duration
      t.integer :number_of_players
      t.text :description
      t.integer :base_id
      t.integer :game_type_id

      t.timestamps
    end
    add_index :games, :base_id
    add_index :games, :game_type_id
  end
end
