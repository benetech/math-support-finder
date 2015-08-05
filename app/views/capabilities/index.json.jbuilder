json.array!(@capabilities) do |capability|
  json.extract! capability, :id, :affordance_id, :setup_id, :verification_status_id
  json.url capability_url(capability, format: :json)
end
