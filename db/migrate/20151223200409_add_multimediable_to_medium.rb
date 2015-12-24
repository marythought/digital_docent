class AddMultimediableToMedium < ActiveRecord::Migration
  def change
    add_column :media, :multimediable_id, :integer
    add_column :media, :multimediable_type, :string
    add_index :media, :multimediable_id
  end
end
