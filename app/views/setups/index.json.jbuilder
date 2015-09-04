json.array!(@setups) do |setup|
  json.extract! setup, :id, :platform_version_id, :renderer_id, :browser_reader_version_id, :assistive_technology_version_id, :file_format_id, :workflow_status_id, :notes
  json.url setup_url(setup, format: :json)
end
