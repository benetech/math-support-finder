json.array!(@verification_statuses) do |verification_status|
  json.extract! verification_status, :id, :title
  json.url verification_status_url(verification_status, format: :json)
end
