json.array!(@browser_readers) do |browser_reader|
  json.extract! browser_reader, :id, :title, :notes
  json.url browser_reader_url(browser_reader, file_format: :json)
end
