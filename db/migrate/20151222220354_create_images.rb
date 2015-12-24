class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.boolean :zoom
      t.string :file_link

      t.timestamps null: false
    end
  end
end
