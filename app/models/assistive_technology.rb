<<<<<<< HEAD
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

=======
class AssistiveTechnology < ActiveRecord::Base
  belongs_to :platform, inverse_of: :assistive_technologies
  has_many :matrix_entries, inverse_of: :assistive_technology

  def title_with_version
    "#{title} #{version}"
  end
end
>>>>>>> combo-box
