json.array!(@platforms) do |platform|
  json.extract! platform, :id, :title, :notes
  json.url platform_url(platform, format: :json)
end
