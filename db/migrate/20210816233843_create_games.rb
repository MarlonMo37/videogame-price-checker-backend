class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name
      t.string :release_date
      t.string :image_id
      t.string :genres
      t.string :platforms
      t.string :summary
      t.integer :playtime
      t.integer :rating
      t.string :esrb_rating
      t.string :artworks

      t.timestamps
    end
  end
end
