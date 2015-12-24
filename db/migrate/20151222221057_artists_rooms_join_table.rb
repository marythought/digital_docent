class ArtistsRoomsJoinTable < ActiveRecord::Migration
  create_join_table :artists, :rooms
end
