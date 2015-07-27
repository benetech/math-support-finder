json.array!(@assistive_technologies) do |assistive_technology|
  json.extract! assistive_technology, :id, :title, :notes
  json.url assistive_technology_url(assistive_technology, file_format: :json)
end
