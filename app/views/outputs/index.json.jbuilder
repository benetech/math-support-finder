json.array!(@outputs) do |output|
  json.extract! output, :id, :title, :notes
  json.url output_url(output, format: :json)
end
