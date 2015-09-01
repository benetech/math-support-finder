json.array!(@features) do |feature|
  json.extract! feature, :id, :title
  json.url feature_url(feature, format: :json)
end
