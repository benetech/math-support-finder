json.array!(@features) do |feature|
  json.extract! feature, :id, :title, :notes
  json.url feature_url(feature, file_format: :json)
end
