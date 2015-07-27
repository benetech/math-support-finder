json.array!(@formats) do |format|
  json.extract! format, :id, :title, :notes
  json.url format_url(format, format: :json)
end
