class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :page_title
      t.string :work_title
      t.string :other_craft
      t.string :other_artist
      t.string :type_of_item
      t.string :material
      t.string :technique
      t.date :created
      t.string :signature
      t.text :features
      t.date :date_acquired
      t.string :gift_of
      t.string :text_documents
      t.boolean :featured

      t.timestamps null: false
    end
  end
end
