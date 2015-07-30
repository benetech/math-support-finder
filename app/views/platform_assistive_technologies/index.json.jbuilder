json.array!(@platform_assistive_technologies) do |platform_assistive_technology|
  json.extract! platform_assistive_technology, :id, :platform_id, :assistive_technology_id
  json.url platform_assistive_technology_url(platform_assistive_technology, format: :json)
end
