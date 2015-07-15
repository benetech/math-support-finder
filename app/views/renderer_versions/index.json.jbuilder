json.array!(@renderer_versions) do |renderer_version|
  json.extract! renderer_version, :id, :renderer_id, :version, :notes
  json.url renderer_version_url(renderer_version, format: :json)
end
