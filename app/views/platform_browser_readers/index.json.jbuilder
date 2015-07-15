json.array!(@platform_browser_readers) do |platform_browser_reader|
  json.extract! platform_browser_reader, :id, :platform_id, :browser_reader_id
  json.url platform_browser_reader_url(platform_browser_reader, format: :json)
end
