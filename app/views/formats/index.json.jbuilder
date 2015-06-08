json.array!(@formats) do |format|
  json.extract! format, :id, :title, :description, :link, :version
  json.url format_url(format, format: :json)
end
