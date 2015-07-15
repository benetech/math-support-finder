json.array!(@pats) do |pat|
  json.extract! pat, :id, :platform_id, :assistive_technology_id
  json.url pat_url(pat, format: :json)
end
