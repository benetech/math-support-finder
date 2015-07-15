json.array!(@content_source_configurations) do |content_source_configuration|
  json.extract! content_source_configuration, :id, :configuration_id, :content_source_id
  json.url content_source_configuration_url(content_source_configuration, format: :json)
end
