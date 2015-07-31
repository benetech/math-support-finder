json.array!(@content_source_setups) do |content_source_setup|
  json.extract! content_source_setup, :id, :setup_id, :content_source_id
  json.url content_source_setup_url(content_source_setup, format: :json)
end
