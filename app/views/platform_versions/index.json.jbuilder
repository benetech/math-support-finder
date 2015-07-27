json.array!(@platform_versions) do |platform_version|
  json.extract! platform_version, :id, :platform_id, :version, :notes
  json.url platform_version_url(platform_version, file_format: :json)
end
