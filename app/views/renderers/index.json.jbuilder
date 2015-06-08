json.array!(@renderers) do |renderer|
  json.extract! renderer, :id, :title, :description, :link, :version
  json.url renderer_url(renderer, format: :json)
end
