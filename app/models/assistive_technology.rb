class AssistiveTechnology < ActiveRecord::Base
  has_many :assistive_technology_versions, inverse_of: :assistive_technology
  has_many :matrix_entries, through: :assistive_technology_version
end

class AssistiveTechnologyVersion < ActiveRecord::Base
  belongs_to :assistive_technology, inverse_of: :assistive_technology_versions
  has_many :matrix_entries, inverse_of: :assistive_technology_version

  def title_with_version
    "#{assistive_technology.title} #{version}"
  end
end

