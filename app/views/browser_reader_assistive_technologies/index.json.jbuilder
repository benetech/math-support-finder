json.array!(@browser_reader_assistive_technologies) do |browser_reader_assistive_technology|
  json.extract! browser_reader_assistive_technology, :id, :browser_reader_id, :assistive_technology_id
  json.url browser_reader_assistive_technology_url(browser_reader_assistive_technology, format: :json)
end
