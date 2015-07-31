json.array!(@assistive_technology_versions) do |assistive_technology_version|
  json.extract! assistive_technology_version, :id, :assistive_technology_id, :version, :notes
  json.url assistive_technology_version_url(assistive_technology_version, format: :json)
end
