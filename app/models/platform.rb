class Platform < ActiveRecord::Base
  has_many :assistive_technologies, inverse_of: :platform
  has_many :matrix_entries, inverse_of: :platform
  has_and_belongs_to_many :browser_readers

  def title_with_version
    "#{title} #{version}"
  end
end
