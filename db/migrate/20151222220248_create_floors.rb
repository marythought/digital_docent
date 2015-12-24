class CreateFloors < ActiveRecord::Migration
  def change
    create_table :floors do |t|
      t.integer :name

      t.timestamps null: false
    end
  end
end
