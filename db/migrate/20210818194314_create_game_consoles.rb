class CreateGameConsoles < ActiveRecord::Migration[6.1]
  def change
    create_table :game_console do |t|
      t.references :game, index: true, foreign_key: true
      t.references :console, index: true, foreign_key: true

      t.timestamps
    end
  end
end
