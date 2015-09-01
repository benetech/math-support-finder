json.array!(@outputs) do |output|
  json.extract! output, :id, :title
  json.url output_url(output, format: :json)
end
