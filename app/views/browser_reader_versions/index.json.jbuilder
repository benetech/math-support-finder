json.array!(@browser_reader_versions) do |browser_reader_version|
  json.extract! browser_reader_version, :id, :browser_reader_id, :version, :notes
  json.url browser_reader_version_url(browser_reader_version, format: :json)
end
