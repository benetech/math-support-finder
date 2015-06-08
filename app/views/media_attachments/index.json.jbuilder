json.array!(@media_attachments) do |media_attachment|
  json.extract! media_attachment, :id, :title, :type, :link, :matrix_entry_id
  json.url media_attachment_url(media_attachment, format: :json)
end
