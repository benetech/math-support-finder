json.array!(@browser_reader_file_formats) do |browser_reader_file_format|
  json.extract! browser_reader_file_format, :id, :browser_reader_id, :file_format_id
  json.url browser_reader_file_format_url(browser_reader_file_format, format: :json)
end
