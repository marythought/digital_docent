class AddForeignKeyArtistToItem < ActiveRecord::Migration
  def change
    add_column :items, :artist_id, :integer
    add_foreign_key :items, :artists
  end
end
