json.array!(@formats) do |format|
  json.extract! format, :id, :title, :notes, :text
  json.url format_url(format, format: :json)
end
