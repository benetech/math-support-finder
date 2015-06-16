class Platform < ActiveRecord::Base
  has_many :platform_versions, inverse_of: :platform
  has_many :matrix_entries, through: :platform_version
end

class PlatformVersion < ActiveRecord::Base
  belongs_to :platform, inverse_of: :platform_versions
  has_many :matrix_entries, inverse_of: :platform_version

  def title_with_version
    "#{platform.title} #{version}"
  end
end
