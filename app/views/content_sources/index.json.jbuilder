json.array!(@content_sources) do |content_source|
  json.extract! content_source, :id, :title, :notes
  json.url content_source_url(content_source, file_format: :json)
end
