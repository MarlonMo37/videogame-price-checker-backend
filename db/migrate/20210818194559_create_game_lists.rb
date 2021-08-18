class CreateGameLists < ActiveRecord::Migration[6.1]
  def change
    create_table :game_lists do |t|
      t.references :game, index: true, foreign_key: true
      t.references :list, index: true, foreign_key: true

      t.timestamps
    end
  end
end
