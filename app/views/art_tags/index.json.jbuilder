json.array!(@art_tags) do |art_tag|
  json.extract! art_tag, :id
  json.url art_tag_url(art_tag, format: :json)
end
