json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :page_title, :country_city, :year_of_birth, :year_of_death, :details, :biography, :external_link
  json.url artist_url(artist, format: :json)
end
