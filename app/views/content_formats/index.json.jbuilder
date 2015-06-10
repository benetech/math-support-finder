json.array!(@content_formats) do |content_format|
  json.extract! content_format, :id, :title, :description, :link, :version
  json.url content_format_url(content_format, format: :json)
end
