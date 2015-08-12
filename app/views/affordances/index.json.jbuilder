json.array!(@affordances) do |affordance|
  json.extract! affordance, :id, :feature_id, :output_id
  json.url affordance_url(affordance, format: :json)
end
