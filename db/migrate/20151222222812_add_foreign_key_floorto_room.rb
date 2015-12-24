class AddForeignKeyFloortoRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :floor_id, :integer
    add_foreign_key :rooms, :floors
  end
end
