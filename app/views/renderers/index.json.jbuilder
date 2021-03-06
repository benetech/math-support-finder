json.array!(@renderers) do |renderer|
  json.extract! renderer, :id, :title, :notes
  json.url renderer_url(renderer, format: :json)
end
