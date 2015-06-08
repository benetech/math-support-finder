json.array!(@content_sources) do |content_source|
  json.extract! content_source, :id, :title, :description, :link, :version
  json.url content_source_url(content_source, format: :json)
end
