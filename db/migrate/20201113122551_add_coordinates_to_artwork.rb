class AddCoordinatesToArtwork < ActiveRecord::Migration[6.0]
  def change
    add_column :artworks, :latitude, :float
    add_column :artworks, :longitude, :float
  end
end
