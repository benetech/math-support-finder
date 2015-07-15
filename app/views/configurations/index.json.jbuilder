json.array!(@configurations) do |configuration|
  json.extract! configuration, :id, :platform_version_id, :renderer_version_id, :browser_reader_version_id, :assistive_technology_version_id, :platform_version_id, :format_id, :workflow_status_id
  json.url configuration_url(configuration, format: :json)
end
