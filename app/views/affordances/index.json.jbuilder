json.array!(@affordances) do |affordance|
  json.extract! affordance, :id, :type, :verified, :details, :matrix_entry_id
  json.url affordance_url(affordance, format: :json)
end
