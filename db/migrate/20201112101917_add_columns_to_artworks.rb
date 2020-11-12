class AddColumnsToArtworks < ActiveRecord::Migration[6.0]
  def change
    add_column :artworks, :artist, :string
    add_column :artworks, :price, :string
    add_column :artworks, :date, :integer
    add_column :artworks, :size, :string
    add_column :artworks, :city, :string
  end
end
