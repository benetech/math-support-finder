json.array!(@workflow_statuses) do |workflow_status|
  json.extract! workflow_status, :id, :title
  json.url workflow_status_url(workflow_status, file_format: :json)
end
