json.array!(@browser_reader_renderers) do |browser_reader_renderer|
  json.extract! browser_reader_renderer, :id, :browser_reader_id, :renderer_id
  json.url browser_reader_renderer_url(browser_reader_renderer, file_format: :json)
end
