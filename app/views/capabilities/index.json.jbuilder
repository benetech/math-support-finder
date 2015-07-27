json.array!(@capabilities) do |capability|
  json.extract! capability, :id, :feature_id, :affordance_id, :setup_id, :verification_status_id
  json.url capability_url(capability, file_format: :json)
end
