class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :release_date, :image_id, :age_rating, :genres, :platforms, :summary, :rating, :artworks
end
