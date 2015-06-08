json.array!(@assistive_technologies) do |assistive_technology|
  json.extract! assistive_technology, :id, :title, :description, :link, :version, :platform_id
  json.url assistive_technology_url(assistive_technology, format: :json)
end
