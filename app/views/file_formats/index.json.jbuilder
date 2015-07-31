json.array!(@file_formats) do |file_format|
  json.extract! file_format, :id, :title, :notes
  json.url file_format_url(file_format, format: :json)
end
