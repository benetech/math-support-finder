json.array!(@affordances) do |affordance|
  json.extract! affordance, :id, :title, :notes
  json.url affordance_url(affordance, file_format: :json)
end
