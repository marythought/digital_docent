json.array!(@images) do |image|
  json.extract! image, :id, :zoom, :file_link
  json.url image_url(image, format: :json)
end
