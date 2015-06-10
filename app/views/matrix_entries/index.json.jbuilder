json.array!(@matrix_entries) do |matrix_entry|
  json.extract! matrix_entry, :id, :browser_reader_id, :renderer_id, :content_format_id, :platform_id, :assistive_technology_id
  json.url matrix_entry_url(matrix_entry, format: :json)
end
