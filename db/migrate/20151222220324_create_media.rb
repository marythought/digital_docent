class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :type
      t.string :file_link

      t.timestamps null: false
    end
  end
end
