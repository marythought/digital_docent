json.array!(@items) do |item|
  json.extract! item, :id, :page_title, :work_title, :other_craft, :other_artist, :type_of_item, :material, :technique, :created, :signature, :features, :date_acquired, :gift_of, :text_documents, :featured
  json.url item_url(item, format: :json)
end
