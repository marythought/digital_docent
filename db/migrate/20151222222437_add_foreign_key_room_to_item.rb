class AddForeignKeyRoomToItem < ActiveRecord::Migration
  def change
    add_column :items, :room_id, :integer
    add_foreign_key :items, :rooms
  end
end
