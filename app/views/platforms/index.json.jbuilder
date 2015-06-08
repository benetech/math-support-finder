json.array!(@platforms) do |platform|
  json.extract! platform, :id, :title, :description, :link, :version
  json.url platform_url(platform, format: :json)
end
