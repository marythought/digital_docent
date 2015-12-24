json.array!(@media) do |medium|
  json.extract! medium, :id, :type, :file_link
  json.url medium_url(medium, format: :json)
end
