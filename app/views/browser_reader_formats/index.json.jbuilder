json.array!(@browser_reader_formats) do |browser_reader_format|
  json.extract! browser_reader_format, :id, :browser_reader_id, :format_id
  json.url browser_reader_format_url(browser_reader_format, format: :json)
end
