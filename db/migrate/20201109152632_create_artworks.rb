class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :name
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
