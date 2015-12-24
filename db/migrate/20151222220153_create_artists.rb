class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :page_title
      t.string :country_city
      t.integer :year_of_birth
      t.integer :year_of_death
      t.text :details
      t.text :biography
      t.string :external_link

      t.timestamps null: false
    end
  end
end
