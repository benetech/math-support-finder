json.array!(@capabilities) do |capability|
  json.extract! capability, :id, :feature_id, :affordance_id, :configuration_id, :verification_status_id
  json.url capability_url(capability, format: :json)
end
